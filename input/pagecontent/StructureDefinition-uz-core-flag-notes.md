### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

Flag is not yet advertised by the [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html). Confirm server support before using these interactions; no search support is asserted here.

**Read by server id**

```http
GET [base]/Flag/[id]
```

**Create**

```http
POST [base]/Flag
Content-Type: application/fhir+json
```

**Update with optimistic locking**

```http
PUT [base]/Flag/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Use the generated [eligible donor JSON](Flag-example-donation-eligible-flag.json.html) or [medical deferral JSON](Flag-example-donation-deferred-flag.json.html) as the request body. Replace the example references with actual resource ids. For updates, send the current version from the server in `If-Match`.

### Related

- [Patient](StructureDefinition-uz-core-patient.html)
- [Encounter](StructureDefinition-uz-core-encounter.html)
- [API](api-access.html)
