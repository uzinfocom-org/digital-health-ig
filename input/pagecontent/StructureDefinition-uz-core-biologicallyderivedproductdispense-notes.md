### Quick Start {#quick-start}

Common API interactions for this profile. Requests require a JWT access token - see [Security and authentication](api-access.html#security). `[base]` is the [FHIR server base URL](api-access.html#endpoints); `|` separates a code system from its code and must be URL-encoded as `%7C`.

This resource is not yet advertised in the [DHP CapabilityStatement](CapabilityStatement-DHPCapabilityStatement.html). Confirm server support before using these interactions. Search support is not asserted here.

```http
GET [base]/BiologicallyDerivedProductDispense/[id]
```

```http
POST [base]/BiologicallyDerivedProductDispense
Content-Type: application/fhir+json
```

```http
PUT [base]/BiologicallyDerivedProductDispense/[id]
Content-Type: application/fhir+json
If-Match: W/"[versionId]"
```

Use the generated [issued example JSON](BiologicallyDerivedProductDispense-example-bdp-dispense-issued.json.html) as the request body, replacing example references with actual resource ids. For an update, use the current server version in `If-Match`.

### Related

- [BiologicallyDerivedProduct](StructureDefinition-uz-core-biologically-derived-product.html)
- [ServiceRequest](StructureDefinition-uz-core-servicerequest.html)
- [Procedure](StructureDefinition-uz-core-procedure.html)
- [API](api-access.html)
