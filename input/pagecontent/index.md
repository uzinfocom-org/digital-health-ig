# Uzbekistan Digital Health Platform

This FHIR R5 implementation guide (IG) is a work in progress and is not yet ready for production use. It is intended for testing and feedback purposes only of the [Digital Health Platform](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) (DHP). The content is subject to change as the IG is developed further.

Current priority is on completing the core resource profiles first to enable their implementation in DHP. Afterwards, when sufficient modelling capability is available, the rest of the IG prose will be fleshed out.

### Introduction

This guide is the official source of documentation for the implementation of FHIR within the framework of Uzbekistan's Digital Health Platform, and it has been adapted to the realities, needs, and specific features of the national healthcare system.

The guide serves as a foundation for:

* Developing UZ Core profiles that adapt FHIR resources to local needs in Uzbekistan and establish a common baseline of support digital healthcare in the republic;
  * such adaptations include modelling common identifiers, translations of HL7 codesystems, and marking elements that must be supported by all systems

* Developing usecase-specific profiles to support specific clinical and administrative scenarios;
  * such as the Birth and Death registry

* Utilising international and national classifications and terminologies (SNOMED-CT, LOINC, ICD-10, ICD-11, CBPEPW-2020).

Using this IG will help ensure consistency in the representation of medical data, enhance system interoperability, and establish a solid foundation for a scalable digital health ecosystem.

### Project background

The Digital Health Platform (DHP) is being developed within the framework of the "Support for Healthcare Digitalization Reform" project, implemented under [the agreement](https://www.kfw.de/About-KfW/Newsroom/Latest-News/Pressemitteilungen-Details_723328.html) between the Republic of Uzbekistan and the KfW Development Bank. This initiative is in line with the Presidential Decree of the Republic of Uzbekistan No. PP-140 dated May 1, 2023, "On Additional Measures for the Digitalization of the Healthcare System" and Resolutions of the President of the Republic of Uzbekistan No. PP-415 dated December 28, 2023 "On additional measures to accelerate the digitalization of the healthcare system and the introduction of advanced digital technologies".

### Areas of coverage

The Digital Healthcare Platform of the Republic of Uzbekistan is based on the following 19 services:

* Metadata and Security Management
* Master Data Management
* Patient health journey management
* Clinical Health Records
* Referrals
* Prescription
* Appointment and Scheduling
* Laboratory
* Diagnostics and Imaging
* Ambulance
* Supplies
* Reimbursement
* Clinical Decision Support
* Nursing
* Blood Management
* Vaccination Management
* Public Health Reporting
* Screening Schedules Management
* Quality Assurance

### Identification of versions

Artifacts such as profiles, extensions, codesystems, valuesets, naming systems, and the FHIR package in this IG follow the version of the IG itself. The IG versioning is based on [Semantic Versioning (SemVer)](https://semver.org/) principles in the format of `MAJOR.MINOR.PATCH`. For example, all artifacts in version `2.0.0` of the IG will have the same version number `2.0.0`. This allows for easy identification of which version of the IG an artifact belongs to.

While an artifact is in development and not yet ready for production use, it will have a status of `draft`. Once the artifact is ready for production use, it will be marked as `active`. If an artifact has been retired, it will have a status of `retired`.

A maturity model for testing artifacts in the real world will be introduced in the future, but for now, all artifacts are considered `draft` until they are ready for production use.

The only exception to versioning are translation supplements of official [THO](https://terminology.hl7.org) codesystems, which follow the versioning of the original codesystem. For example, if the THO codesystem version is at `2.1.0`, the supplement will be at `2.1.0` as well, regardless of the IG version. If the THO codesystem is updated to `2.2.0`, the supplement will be updated to `2.2.0` as well. If a supplement needs to be updated while the THO codesystem remains unchanged an extra version number will be added to the supplement, e.g. `2.2.0.1`.

#### Development version of IG: 0.x.x
- IG status: `draft`
- Artifacts status: `draft` with `experimental` flag set to `true`
- Used during initial development and testing
- Breaking changes may occur between minor versions

#### Production versions of IG: 1.x.x+
- IG status: `active`
- Artifacts status: `active` with `experimental` flag set to `false`
- First stable release begins at 1.0.0
- Follows strict SemVer compatibility rules

#### Further major version changes of IG: 2.x.x, 3.x.x, etc.
- Same as production versions
- Indicates breaking changes in parts of the IG or significant architectural updates

### IP Statements
{% include ip-statements-en.xhtml %}

### Contributors

| Name                                             | Role                          | Organization                                    |
| ------------------------------------------------ | ----------------------------- | ----------------------------------------------- |
| [Rustam Sadykov](https://github.com/roosyabuddy) | IG Maintainer                 | [Uzinfocom](https://uzinfocom.uz)               |
| [Vadim Peretokin](https://github.com/vadi2/)     | Primary Author                | [Peretokin Consulting](https://vadimperetok.in) |
| [Bekhzod Akhmedov](https://github.com/BEKHZOD98) | Co-Author                     | [Uzinfocom](https://uzinfocom.uz)               |
| [Sarvar Kubaev](https://github.com/KubayevSarvarbek) | Co-Author                 | [Uzinfocom](https://uzinfocom.uz)               |
| Saodat Kadirova                                  | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Irina Berger                                     | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Ministry of Health of the Republic of Uzbekistan | Strategic Partner             | Government                                      |
| KfW Development Bank                             | Financial & Technical Support | International Donor                             |
