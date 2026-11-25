# Checklist for Terminology Quality Assurance

The [modelling guidelines](modelling-guidelines.en.md) require every CodeSystem to follow this checklist. It comes from section 3.2 of:

> Igor Bossenko, Janek Metsallik, Gunnar Piho. Terminology quality Checklist for medical terminology developers and evaluators. Tallinn University of Technology, 2025. [doi:10.5281/zenodo.14609494](https://doi.org/10.5281/zenodo.14609494) ([PDF](https://zenodo.org/records/14609494/files/Terminology_Checklist.pdf?download=1)), licensed under [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/).

The rules below are the paper's Tables 2-4. Obvious typos are fixed and the tables are restructured as lists. Otherwise the text matches the paper. Russian version: [terminology-quality-checklist.md](terminology-quality-checklist.md).

The checklist splits the rules into three groups:

1. Design time criteria: applied once, while designing the code system.
2. Criteria applied to every concept: applied each time a new version of a concept is created.
3. Criteria applied to every published version: checked before a new version of the code system is published.

Each rule has a description, acceptance criteria, and a verification method. The verification method says whether software (such as a terminology server) can check the rule automatically or whether a person must check it.

## 1. Design time criteria

Review these before developing the content of the code system.

### 1.1 A formal methodology for content discovery and expansion is defined

- Description: Formal, explicit, reproducible methods are developed and used to recognise and fill gaps in the content.
- Acceptance criteria: The methodology of adding new and changing existing concepts is specified as a narrative.
- Verification: by humans.

### 1.2 Identification codes in code systems have no semantic meaning

- Description: The code is applied to the concept automatically and does not contain the term or parent code in the hierarchy. The code may have a client namespace and checksum to support a multi-authoring process.
- Acceptance criteria: The sequence for the generation of unique numbers is created for the code system and has been rigorously applied.
- Verification: by software.

### 1.3 The code system uses formal definitions

- Description: A formal definition of a concept is precise and rigorous, using precise reasoning to remove ambiguity and provide a clear understanding of what the concept means. Usually, these definitions are expressed as a collection of relationships to other concepts in the terminology.
- Acceptance criteria:
  - a) The properties in the code system have been defined.
  - b) The concept definition uses properties and/or associations with other concepts in the same or external code system.
- Verification: by software.

### 1.4 The design of a code system anticipates the evolution of medical terminology over time according to the medical knowledge evolution and needs

- Description: When managing terminology, adaptability is crucial. Clear descriptions of changes are essential to understand why they occur. Good reasons for change include addition, refinement, precoordination, disambiguation, obsolescence, and minor name adjustments. Avoid detrimental changes such as redundancy, major name shifts, code reuse, and arbitrary code alterations.
- Acceptance criteria:
  - a) Term and concept inactivation are supported.
  - b) Ability to specify replacement concepts and reason for inactivation are supported.
  - c) Concept reactivation is supported.
- Verification: by software.

## 2. Criteria applied to every concept

Apply these every time a new version of a concept is created.

### 2.1 A formal methodology for content discovery and expansion is defined

- Description: Formal, explicit, reproducible methods are developed and used to recognise and fill gaps in the content of similar rigour.
- Acceptance criteria: The methodology of adding new and changing existing concepts is specified as a narrative.
- Verification: by humans.

### 2.2 Every concept has at least one designation

- Description: At least one term is needed to describe the concept's meaning to human users.
- Acceptance criteria: At least one designation exists for every concept.
- Verification: by software.

### 2.3 Every active concept has a preferred term

- Description: If several terms are used to designate a concept, only one term should be selected as the preferred one.
- Acceptance criteria: Every concept may have only one designation in every language that specifies the preferred term for the concept in this language.
- Verification: by software.

### 2.4 Each active preferred term in the terminology is unique

- Description: The meanings correspond to no more than one term ("non-redundancy").
- Acceptance criteria: The uniqueness of active preferred terms of active concepts is validated separately for each language. A warning is issued if several active concepts have the same term.
- Verification: by software.

### 2.5 Each concept in the terminology has a single, coherent meaning

- Description: Concept orientation means that terms must correspond to at least one meaning ("non-vagueness") and no more than one meaning ("non-ambiguity") that corresponds to no more than one term ("non-redundancy"). A concept's meaning may vary depending on its appearance in a context.
- Acceptance criteria: If a strict rule for "non-vagueness" and "non-ambiguity" is impossible, a terminologist must make the decision.
- Verification: by humans.

### 2.6 All descriptions are concise

- Description: Descriptions are as brief as possible. Carefully written descriptions contain only the information required to place the concept correctly in the concept system. Any additional information or examples are placed in a note.
- Acceptance criteria:
  - a) A terminologist must evaluate the quality of the description manually.
  - b) A warning will be issued if the description length exceeds the preconfigured number of symbols.
- Verification: by software. The software may issue a warning that validation by humans is needed.

### 2.7 The meaning of the modified concept is the same

- Description: Once created, the meaning of a concept is inviolate/permanent.
- Acceptance criteria:
  - a) In non-formal terminology, a terminologist must clearly assess the unimpaired meaning.
  - b) In formal terminology, the meaning of existing properties should still be the same. The addition of new properties is allowed.
- Verification: by humans for non-formal and by software for formal terminologies.

### 2.8 The concept code and term should follow formatting conventions

- Description and acceptance criteria:
  - Strict rules: The concept code and term should be a sequence of Unicode characters. Leading and trailing white spaces should be trimmed. Content containing double spaces is not allowed. Strings should not contain Unicode character points below 32, except for tabs, carriage return, and line feed. The code should not contain any grave accent (`` ` ``) characters.
  - Warnings: Strings should not contain tabs, newlines, or the characters `@`, `$`, `#`, `\`.
- Verification: by software.

### 2.9 The term must be grammatically correct

- Description: Using correct grammar is essential for clarity, credibility, and perception.
- Acceptance criteria: Spell checkers do not find any errors.
- Verification: either by software or by humans. Humans can extend the dictionary of spell checkers.

## 3. Criteria applied to every published version

Validate these before publishing a new version of the code system. They ensure the published version's uniqueness, consistency, and integrity.

### 3.1 A formal methodology for content discovery and expansion is defined

- Description: Formal, explicit, reproducible methods for recognising and filling gaps in the content of similar rigour are developed and used for content discovery and expansion.
- Acceptance criteria: The methodology of adding new and changing existing concepts is specified.
- Verification: by humans.

### 3.2 All formal definitions are unique

- Description and acceptance criteria: The collection of properties and values of one concept does not duplicate the collection of properties and values of any other concept.
- Verification: by software.

### 3.3 The code system does not contain any terms that mean "Not Elsewhere Classified"

- Description: Terminologies should reject the use of terms that can be used to encode information not represented by any other existing terms. The problem with such terms is that they can never have a formal definition other than one of exclusion, that is, the definition can only be based on knowledge of the rest of the concepts in the terminology. The semantic meaning of these concepts will change with the addition or removal of concepts in the code system.
- Acceptance criteria: While strict rules for identifying terms meaning "Not Elsewhere Classified" are challenging, a blacklist of frequently used words in each language can be compiled. A terminologist must then evaluate the use of terms from this blacklist.
- Verification: a warning may be issued by software; final validation by humans.

### 3.4 The terminology was created independently of the specific contexts in which it would be used

- Description: Terminology could never be truly flexible, extensible, and comprehensive without grammar defining how it should be used. Such limitations are needed for the terminology to support operations such as predictive data entry, natural language processing, and aggregation of patient records.
- Acceptance criteria:
  - a) The code system has context-independent concepts.
  - b) The concepts expressed in context are specified.
  - c) Every concept may be reused in defining another concept as a property value.
- Verification: by humans.

### 3.5 The code system is consistent

- Description: The relationships are valid and do not contain inactivated components.
- Acceptance criteria: Any active property or association (including parent concept) of the active concept should be active. If the concept is inactivated, all relationships to other concepts should be inactivated, too.
- Verification: by software.

## Applying the checklist

The authors note that most rules target well-designed formal terminologies. Statistical or financial classifications are usually not formalised and often contain "Not Elsewhere Classified" concepts. So decide per code system which rules apply. Individual concepts may also need exceptions, for example homographs that legitimately share a preferred term.
