# 🇺🇿 DHP Implementation Guide for Uzbekistan

Welcome to the official repository of the **Digital Health Platform (DHP)** Implementation Guide of the Republic of Uzbekistan. This guide defines the interoperability standards, FHIR profiles, terminology bindings, and business processes that enable secure, patient-centric digital healthcare services nationwide.

> 📌 Published by **Uzinfocom** in collaboration with the **Ministry of Health of Uzbekistan** under the national healthcare digitalization program supported by **KfW Development Bank**.


---

## 🌐 About the Project

The **DHP** is a unified digital infrastructure supporting Electronic Health Records (EHR), telemedicine, public health reporting, and integrated care across Uzbekistan.

* 📅 Project duration: 2024–2027
* 🧭 Aligned with: *Digital Uzbekistan 2030*, *Presidential Decree PD-415*, *Concept for Health 2019–2025*
* 🔗 Interoperability standard: **HL7® FHIR® R5**


---

## 📘 Guide Contents

This Implementation Guide includes:

* ✅ **FHIR profiles** for patient management, prescriptions, referrals, diagnostics, immunizations, etc.
* 🏥 **Business use cases** (e.g., EHR exchange, appointment booking, public health reporting)
* 🔐 **Security and access control models** (RBAC, consent, audit, OAuth2)
* 🌍 **Terminology services**: ICD-11, SNOMED CT, LOINC, ATC, UCUM
* 🧪 **Validation and examples** for all use cases


---

## 🔗 Links

* 🌐 **Live IG site**: [ig.medcore.uz](https://ig.medcore.uz)


---

## 👥 Contributors

| Name                                             | Role                          | Organization                                    |
|--------------------------------------------------|-------------------------------|-------------------------------------------------|
| [Rustam Sadykov](https://github.com/roosyabuddy) | IG Maintainer                 | [Uzinfocom](https://uzinfocom.uz)               |
| [Vadim Peretokin](https://github.com/vadi2/)     | Primary Author                | [Peretokin Consulting](https://vadimperetok.in) |
| [Bekhzod Akhmedov](https://github.com/BEKHZOD98) | Co-Author                     | [Uzinfocom](https://uzinfocom.uz)               |
| [Sarvar Kubaev](https://github.com/KubayevSarvarbek) | Co-Author                 | [Uzinfocom](https://uzinfocom.uz)               |
| Saodat Kadirova                                  | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Irina Berger                                     | Business Analyst              | [Uzinfocom](https://uzinfocom.uz)               |
| Ministry of Health of the Republic of Uzbekistan | Strategic Partner             | Government                                      |
| KfW Development Bank                             | Financial & Technical Support | International Donor                             |

---

## 🛠️ Repository Management and Development Standards

**Semantic versioning**: Version identification follows the conventions documented at https://build.fhir.org/ig/vadi2/DHP-temp/en/index.html#identification-of-versions.

**Branching strategy**: Feature branches are created as needed and merged into the main branch via rebase or squash-commit. All releases are tagged from the main branch according to semantic versioning standards.

**Code review policy**: Pull requests must pass IG Publisher QA checks without introducing new errors or warnings, and require approval from at least one FHIR expert before merging.

**Quality assurance**: Static analysis is enforced through the FHIR IG Publisher's built-in validation and QA tooling, which checks for conformance issues, broken references, terminology validation errors, and a host of other issues.

---

## 📚 Documentation

[Modelling Guidelines](/modelling-guidelines.md)

---

## 📜 License

This Implementation Guide is open-source under the **CC BY-SA 4.0** license.