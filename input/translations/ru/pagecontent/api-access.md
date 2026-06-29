> **Машинный перевод, требуется проверка человеком.** Эта страница автоматически переведена с английского языка с помощью искусственного интеллекта и пока не проверена редактором. При любых расхождениях приоритет имеет оригинальная англоязычная версия.

### Конечные точки {#endpoints}

Это базовые URL-адреса FHIR-сервера - тот самый `[base]`, который показан в примерах API на каждой странице профиля. Добавьте к одному из них тип ресурса и любые параметры поиска, например `[base]/Patient?identifier=...`.

- **Playground**: `playground.dhp.uz/fhir`
- **Production**: `fhir.dhp.uz`


### Доступность возможностей платформы {#availability}

Профили в данном руководстве определяют целевую FHIR-поверхность для DHP. Платформа вводит эту поверхность поэтапно, поэтому некоторые возможности пока недоступны на **playground**. Разрабатывайте в соответствии с профилем как он написан - формы запросов, показанные во всём этом руководстве, корректны; там, где возможность ещё не запущена, в примечании ниже приведён временный подход.

Статус отражает состояние playground на 2026-06-03 и меняется по мере развёртывания. Считайте источником истины об ожидаемом поведении профили, а не эту таблицу.

| Возможность | Playground | Как работать с этим сегодня |
|------------|------------|-----------------------|
| Эндпоинты `AuditEvent`, `Consent`, `Provenance`, `DocumentReference` | Пока не включены | Примеры корректны для момента запуска; пока отложите эти интеграции. |
| Поиск по диапазону дат для `Observation` (`date`), `Condition` (`onset-date`), `Procedure` (`date`), `Immunization` (`date`), `Specimen` (`collected`), `AdverseEvent` (`date`), `PlanDefinition` (`date`) | Возвращает результаты без фильтрации по дате | Пока применяйте фильтр по дате на стороне клиента. `Condition` (`recorded-date`), `Encounter` (`date`) и `EpisodeOfCare` (`date`) фильтруют как ожидается. |
| Поиск по `Practitioner` (`qualification-code`), `Organization` (`partof`), `Procedure` (`status`), `PlanDefinition` (`context-type-value`) | Возвращает результаты без фильтрации | Пока фильтруйте на стороне клиента. |
| `$validate-code` / `$expand` для CodeSystems и ValueSets UZ Core | Будут загружены, когда это руководство будет опубликовано на платформе | Международные системы кодирования (ICD-10, HL7) уже валидируются. Полноценные сервисы терминологии LOINC и SNOMED CT пока не запущены. |


### Безопасность и аутентификация {#security}

Доступ к FHIR API платформы DHP защищён по стандарту OAuth 2.0 через централизованный сервер Single Sign-On (SSO) и поддерживает как backend-приложения (grant `client_credentials`), так и frontend-приложения (grant `authorization code` с обязательным PKCE).

Регистрация клиента, потоки авторизации, получение и использование токенов доступа, а также описания ошибок полностью документированы на сервере SSO: [sso.dhp.uz/docs](https://sso.dhp.uz/docs).

### Транзакции

FHIR [транзакции](https://hl7.org/fhir/http.html#transaction) позволяют отправить несколько ресурсов в одном атомарном запросе. Либо все операции выполняются успешно, либо ни одна не применяется - частичных результатов не бывает.

Транзакция - это `Bundle` с `type`, установленным в `transaction`. Каждая запись (`entry`) содержит:
- `fullUrl`  - временный идентификатор ресурса в формате `urn:uuid:`
- `resource`  - ресурс для создания или обновления
- `request.method`  - HTTP-метод (`POST` для создания, `PUT` для обновления)
- `request.url`  - тип ресурса (для `POST`) или путь к ресурсу (для `PUT`)

Ресурсы внутри транзакции могут ссылаться друг на друга через значения `urn:uuid:`. Сервер заменяет их на реальные идентификаторы после обработки.

Отправьте Bundle через `POST [base]` (не на конкретный endpoint ресурса).

**Пример запроса**: [Transaction Bundle JSON](Bundle-example-transaction-bundle.json) - отправляет EpisodeOfCare, Encounter и три Observation.

#### Ответ сервера

При успехе сервер возвращает Bundle типа `transaction-response`. Каждая запись содержит `response.status` и `response.location` с присвоенным сервером идентификатором.

**Пример**: [Успешный ответ JSON](Bundle-example-transaction-response.json)

Если какая-либо запись не проходит валидацию, вся транзакция откатывается, и сервер возвращает `OperationOutcome` с описанием ошибки.

**Пример**: [Ошибка JSON](OperationOutcome-example-transaction-response-error.json)

### Параллельный доступ {#concurrency}

Платформа использует оптимистичную блокировку, чтобы два клиента, обновляющие один и тот же ресурс, не могли незаметно перезаписать изменения друг друга (проблема «потерянного обновления»).

Каждое чтение возвращает текущую версию ресурса в виде слабого `ETag`:

```
GET [base]/Observation/[id]

200 OK
ETag: W/"3"
```

Чтобы выполнить обновление безопасно, отправьте это значение обратно в заголовке `If-Match`. Сервер применяет запись только в том случае, если ресурс всё ещё имеет ту же версию, после чего версия инкрементируется:

```
PUT [base]/Observation/[id]
If-Match: W/"3"

200 OK
ETag: W/"4"
```

Если кто-то другой изменил ресурс с момента вашего чтения, версия больше не совпадает, и запись отклоняется - ничего не перезаписывается:

```
PUT [base]/Observation/[id]
If-Match: W/"3"

412 Precondition Failed
{ "resourceType": "OperationOutcome",
  "issue": [{ "severity": "error", "code": "invalid", "details": { "text": "Version is mismatch" } }] }
```

При `412` перечитайте ресурс, повторно примените своё изменение поверх новой версии и снова выполните `PUT`. Платформа требует `If-Match` при каждом обновлении: `PUT` без него отклоняется с `412`, поэтому всегда отправляйте обратно `ETag` из вашего последнего чтения.

### Обработка ошибок

*\<to be filled in - describe error handling here\>*

### Валидация ресурсов по UZ Core {#validation}

Прежде чем отправлять данные на платформу, проверьте их по профилям UZ Core. Используйте [онлайн-валидатор](#validation-web) (ничего не нужно устанавливать) или [командную строку FHIR-валидатора](#validation-cli) (можно автоматизировать). Оба используют один и тот же движок валидации; важно загрузить это руководство (IG), чтобы профили `uz-core-*` разрешались.

#### Командная строка валидатора {#validation-cli}

Для автоматизации или скриптового использования скачайте [HL7 FHIR валидатор](https://github.com/hapifhir/org.hl7.fhir.core/releases/latest/download/validator_cli.jar) и выполните:

```
java -jar validator_cli.jar resource.json -version 5.0.0 -ig uz.dhp.core#current
```

Флаг `-ig` выполняет ту же роль, что и добавление IG в онлайн-валидаторе ниже.

#### Онлайн-валидатор (validator.fhir.org) {#validation-web}

1. Откройте [validator.fhir.org](https://validator.fhir.org/).
2. На вкладке Options установите версию FHIR `5.0.0`. Затем в разделе Implementation Guides введите `uz.dhp` в поле *Select IG*, выберите `uz.dhp.core`, укажите версию `current` и нажмите Add. Убедитесь, что появилось `Selected IGs (1): uz.dhp.core#current`.
3. На вкладке Validate вставьте ресурс в поле Enter Resource (или используйте Upload Resources) и нажмите Validate.
4. Просмотрите результаты. Каждое замечание показывает уровень серьёзности, местоположение и сообщение.

<figure style="margin: 1.5em 0;">
<img src="validator-fhir-org-1-options.png" width="460" alt="Загрузка руководства UZ Core на вкладке Options в validator.fhir.org"/>
<figcaption style="font-size: 0.9em; color: #555;">Шаг 2 - загрузка <code>uz.dhp.core#current</code> в Options.</figcaption>
</figure>

<figure style="margin: 1.5em 0;">
<img src="validator-fhir-org-2-enter-resource.png" width="560" alt="Ввод ресурса на вкладке Validate"/>
<figcaption style="font-size: 0.9em; color: #555;">Шаг 3 - ввод ресурса на вкладке Validate.</figcaption>
</figure>

<figure style="margin: 1.5em 0;">
<img src="validator-fhir-org-3-results.png" width="760" alt="Результаты валидации"/>
<figcaption style="font-size: 0.9em; color: #555;">Шаг 4 - результаты валидации.</figcaption>
</figure>

Загрузка IG на шаге 2 - это шаг, который часто пропускают. Если его пропустить, валидатор не сможет разрешить профиль `uz-core-*`, указанный в `meta.profile` ресурса, и попытается обратиться к его каноническому URL по сети, что вернёт ошибку 404:

```
Profile reference 'https://dhp.uz/fhir/core/StructureDefinition/uz-core-encounter'
has not been checked because it could not be found ... 404 Not Found
```

В этом случае ресурс проверяется только по базовой спецификации FHIR R5, а не по UZ Core, и реальные нарушения профиля остаются незамеченными.

#### Выбор версии {#validation-version}

`current` отслеживает последнюю сборку этого руководства. Закреплённый релиз, например `uz.dhp.core#0.5.0`, проверяет по последней официальной публикации, которая может отставать от `current` и поэтому сообщать о меньшем числе проблем. Используйте `current`, пока руководство ещё развивается.

### Must Support
Многие элементы в профилях помечены как Must Support. О том, что это означает, в каких двух контекстах используется и как обращаться с элементами, которые вы не можете заполнить, см. на отдельной странице [Must Support](must-support.html).

{% include markdown-link-references.md %}
