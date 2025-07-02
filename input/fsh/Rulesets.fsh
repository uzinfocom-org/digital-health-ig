RuleSet: AddressRules
* address MS
  * type and use and line and city and district and country and period MS
  * type from AddressTypeVS (required)
  * use from AddressUseVS (required)
  * use ^short = "Type of address, home | temp"
  * country from ISO3166_2_UZ (required)
  * district from regions-vs (required)
  * city from regions-vs (required)

RuleSet: MultilingualName(entityType)
* name 1..1 MS
  * ^short = "Наименование {entityType} (на узбекском языке)"
  * extension contains translation named translation 0..* MS
    * ^short = "Наименование {entityType} (на русском и английском языках)"

RuleSet: TaxIdentifier
* identifier[tax-id]
  * ^short = "Unique identifier of the organization in Soliq"
  * system 1..1 MS
  * system = $organization-tax-id-system
  * type 1..1 MS
  * type = $identifier-type#TAX "Tax ID number"
  * use = #official
  * value 1..1 MS
