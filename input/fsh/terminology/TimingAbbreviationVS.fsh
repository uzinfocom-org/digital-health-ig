ValueSet: TimingAbbreviationVS
Id: timing-abbreviation-vs
Title: "Days of Week ValueSet"
Description: "A value set defining the days of the week (mon, tue, wed, etc.) with UZ/RU translations."
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[0].valueCanonical = Canonical(TimingAbbreviationCS)
* ^extension[1].url = $valueset-supplement
* ^extension[1].valueCanonical = Canonical(GTSAbbreviationCS)

// Включаем все коды из стандартной системы
* include codes from system $v3-gtc-abbreviation
* include codes from system $timing-abbreviation