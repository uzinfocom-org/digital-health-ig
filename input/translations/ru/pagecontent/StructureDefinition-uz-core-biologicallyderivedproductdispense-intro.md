> **Машинный перевод, требуется проверка человеком.** При расхождениях приоритет имеет английская версия.

UZ Core BiologicallyDerivedProductDispense фиксирует выдачу [биологического продукта](StructureDefinition-uz-core-biologically-derived-product.html) клинической команде [пациента](StructureDefinition-uz-core-patient.html) по [назначению](StructureDefinition-uz-core-servicerequest.html). [Procedure](StructureDefinition-uz-core-procedure.html) может ссылаться на выдачу как на дополнительную информацию и описывает саму трансфузию.

### undefined

[Must Support](must-support.html)

#### Каждый UZ Core BiologicallyDerivedProductDispense должен содержать

Статус, ссылку на один продукт и реципиента. Каждый переданный исполнитель должен ссылаться на врача. Каждый переданный бизнес-идентификатор содержит систему и значение.

#### Каждый UZ Core BiologicallyDerivedProductDispense должен поддерживать

- идентификатор выдачи, если присвоен;
- исполняемое назначение;
- статус выдачи;
- продукт и реципиента;
- участников выдачи;
- фактическое время передачи.

### Пошаговое создание JSON

1. [Минимальный JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-minimal.json.html) содержит статус, продукт и пациента, а также профиль в `meta.profile`.
2. [JSON выдачи](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) добавляет назначение, врача, места, количество и время подготовки и передачи. Ссылки используют профили UZ Core; количество отражает фактически выданный объём.
3. [JSON возврата](BiologicallyDerivedProductDispense-example-bdp-dispense-returned.json.html) показывает необязательные коды совместимости, происхождения и функции исполнителя из исходных систем HL7. Прерывание трансфузии само по себе не означает возврата продукта.

В BMS совместимость ABO и Rh-Hr хранится в Observation. Статус выдачи описывает выдачу, а не результат трансфузии. Систему идентификатора согласуют с выдавшей системой; URI-заполнитель профилем не фиксируется.

[Быстрый старт](#quick-start).
