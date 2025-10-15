The DHP implementation guide uses terminology, notations and design principles that are specific to the [HL7 FHIR R5 standard](https://hl7.org/fhir/R5/). It is important to be familiar with the basic principles of FHIR and how to read FHIR specifications. Readers who are unfamiliar with FHIR are therefore encouraged to review the following explanation prior to reading the rest of this implementation guide.

### FHIR overview

Fast healthcare interoperability resources (FHIR) is a Health Level 7 (HL7) platform specification that supports the exchange of healthcare information between healthcare systems and applications. Medical data must be available and understandable when patients move around the healthcare ecosystem. To assure this, FHIR defines a set of capabilities used across the healthcare process, in all jurisdictions, and in lots of different contexts. FHIR is universally applicable, meaning that it can be used in a broad variety of implementation environments, e.g. EHR-based data sharing, mobile phone apps, and cloud communications. Also, FHIR has a strong focus on fast and easy implementation, which lowers the barriers of entry for new developers to work with FHIR.

### Clinical application

FHIR is designed to standardize and enable the exchange of all healthcare-related information. This involves not only clinical data but also healthcare-related administrative and research data. FHIR can be used in both human and veterinary medicine and is worldwide applicable in a wide variety of contexts, including in-patient, acute care, long-term care, ambulatory care, community care, etc. One of the benefits of HL7 FHIR is that it is independent of any EHR vendor or health system. Furthermore, the specification is free for everyone to use and there are many public examples available to assist in development of new applications.

### Resources
The basic building blocks of FHIR are called resources, which are represented in JSON in DHP. A resource is considered a collection of information, called data elements, to exchange or store data. For instance, the resource Patient contains demographic and administrative details about the person who is receiving care. There are multiple resources covering different aspects of the healthcare domain, from research and patient management to medical billing and clinical reports. The main goal is that a set of resources should cover most clinical use cases. This can be achieved by combining resources through references. For instance, by linking Patient to Observation (which stores (clinical) findings of a patient), Condition (problem or diagnosis) and Medication (ingredients, amount and strength of medications), you can implement and tailor specific cases for your needs given the [available profiles](artifacts.html).

### Profiling
A profile defines the use of a resource in a specific scenario. The term profiling refers to the act of applying constraints to the so-called core resources. These resources are created by workgroups of specialists to accommodate the most common use cases. Because of the generic nature, the rules in this specification are fairly loose. By applying a set of constraints to a FHIR resource, it can be tailored to a specific scenario - such as the specific usecasdes that DHP supports. By combining core resources with the profiles that DHP defines, you can build applications that suit your needs in Uzbekistan's healthcare ecosystem.

### Working with addresses

UZ Core supports both Uzbekistan and international addresses.

#### Creating an Uzbekistan address

For Uzbekistan addresses, you must use **coded values** from official registries for administrative divisions. The system validates that district, state, and city match codes from the Digital Population Management (DPM) system:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "UZ",
    "state": "1727",            // Region code must come from https://terminology.dhp.uz/fhir/core/ValueSet/state-vs (e.g., 1727 for Tashkent Region)
    "district": "1727220",      // District code must come from from https://terminology.dhp.uz/fhir/core/ValueSet/regions-vs (e.g., 1727220 for Bekobod district)
    "city": "17150085",         // Mahalla code must come from https://terminology.dhp.uz/fhir/core/ValueSet/mahalla-vs (citizens' assembly)
    "line": ["Amir Temur ko'chasi"],
    "text": "Yangi Sergeli mahallasi, Amir Temur ko'chasi, 15-uy, 42-xonadon"
  }]
}
```

#### Creating an International address

For non-Uzbekistan addresses, administrative divisions are free text without required valuesets, allowing flexible representation of foreign address structures:

```jsonc
{
  "address": [{
    "use": "home",
    "type": "physical",
    "country": "US",
    "state": "California",             // Free text
    "district": "Los Angeles County",  // Free text
    "city": "Los Angeles",             // Free text
    "line": ["123 Main Street", "Apt 4B"],
    "postalCode": "90001"
  }]
}
```

### Terminology
To improve interoperability, standardized terminology is crucial. By using standardized terminology, healthcare information can be collected, documented and processed in similar data concepts. This allows healthcare providers to share and compare clinical knowledge in a consistent and internationally accepted system. FHIR cannot define every code required in a healthcare system across the world, so instead, they provided two resources to manage codes and their meaning, namely:

* CodeSystem - is a collection of codes that define several codes and their meaning. The concept of a CodeSystem is similar to a catalog, containing all kinds of codes and their definitions. The CodeSystem may be SNOMED-CT or LOINC or even one you created yourself.

* ValueSet - specifies a selection of codes extracted from one or more CodeSystems, intended for use in a particular context. A ValueSet contains the links to the actual codes from a particular CodeSystem. The advantage is that when a CodeSystem gets updated, the ValueSets containing codes from this CodeSystem will be updated automatically.

#### CodeSystems and language support
This IG utilizes two distinct approaches to terminology management. For Uzbekistan-specific clinical concepts, we define original CodeSystems with codes authored in Uzbek as the default language, supplemented with Russian and English designations to support multilingual implementations. For standardized terminologies from HL7 Terminology (THO) used by FHIR, we provide CodeSystem supplements that add Uzbek and Russian translations to the existing English-based terminology. These multilingual designations serve exclusively presentation purposes in user interfaces - the underlying codes themselves remain language-independent identifiers that applications can process consistently regardless of the display language selected by end users.

#### ConceptMaps
ConceptMaps in FHIR define relationships and mappings between codes from different terminology systems, enabling semantic interoperability across disparate coding schemes. Within the DHP implementation, applications must exclusively use locally-defined codes for data exchange and storage. To facilitate integration with international standards, DHP provides ConceptMap resources that establish mappings between common international terminologies (such as ICD-10, SNOMED CT, or LOINC) and the corresponding local Uzbekistan codes. Applications can leverage the ConceptMap $translate operation to programmatically convert standard international codes into the required local codes, ensuring compliance with DHP requirements while maintaining compatibility with global healthcare standards.

### Links

For further reading, we recommend to use the following links:

* [FHIR summary](http://hl7.org/fhir/r5/summary.html)
* [Developer's introduction](http://hl7.org/fhir/r5/overview-dev.html)
* [Data types](http://hl7.org/fhir/r5/datatypes.html)
* [Using codes](http://hl7.org/fhir/r5/terminologies.html)
* [References between resources](http://hl7.org/fhir/r5/references.html)
* [How to read resource & profile definitions](http://hl7.org/fhir/r5/formats.html#table)
* [Base resource definitions](http://hl7.org/fhir/r5/resource.html)

### Related FHIR IGs

{% include dependency-table-en.xhtml %}

{% include globals-table-en.xhtml %}
