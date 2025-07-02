ValueSet: AuditPurposeOfUseVS
Id: audit-purpose-of-use-vs
Title: "Purpose of use"
Description: "Defines agent's the purpose of use in Uzbek and Russian"
* ^url = "https://terminology.medcore.uz/ValueSet/audit-purpose-of-use-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(ActReasonCS)
* ^version = "2.0.0"

* include $v3-ActReason#HOPERAT
* include $v3-ActReason#GOV
* include $v3-ActReason#HDIRECT
* include $v3-ActReason#HPRGRP
* include $v3-ActReason#HSYSADMIN
* include $v3-ActReason#RECORDMGT
* include $v3-ActReason#PATRQT
* include $v3-ActReason#FAMRQT
* include $v3-ActReason#PWATRNY
* include $v3-ActReason#DISASTER
* include $v3-ActReason#TREAT
* include $v3-ActReason#ETREAT
