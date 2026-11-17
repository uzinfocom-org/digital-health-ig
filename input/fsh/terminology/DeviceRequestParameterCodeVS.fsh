ValueSet: DeviceRequestParameterCodeVS
Id: device-request-parameter-code-vs
Title: "Device request parameter"
Description: "Device request parameters"
* ^url = "https://terminology.dhp.uz/fhir/core/ValueSet/device-request-parameter-code-vs"
* ^experimental = true
* ^extension[0].url = $valueset-supplement
* ^extension[=].valueCanonical = Canonical(DeviceRequestParameterCodeCS)

* include $sct#410668003 "Length"
* include $sct#103355008 "Width"
* include $sct#81827009 "Diameter"
