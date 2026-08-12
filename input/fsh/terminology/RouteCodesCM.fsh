Instance: route-codes-to-snomed
InstanceOf: ConceptMap
Usage: #definition
Title: "Route of Administration to SNOMED CT"
Description: "Maps local UZ route of administration codes to SNOMED CT codes."
* url = "https://terminology.dhp.uz/fhir/core/ConceptMap/route-codes-to-snomed"
* name = "RouteCodesToSnomed"
* status = #draft
* experimental = false
* publisher = "Uzinfocom"

* group.source = Canonical(RouteCodesCS)
* group.target = $sct
* targetScopeCanonical = $sct-vs

* group.element[+].code = #pharm-0001-0001
* group.element[=].display = "Arteriya ichiga"
* group.element[=].target[+].code = #58100008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0002
* group.element[=].display = "Bachadon ichiga"
* group.element[=].target[+].code = #62226000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0003
* group.element[=].display = "Bosh miya yoki yurak qorinchasi ichiga"
* group.element[=].target[+].code = #420719007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0004
* group.element[=].display = "Boʻgʻim ichiga"
* group.element[=].target[+].code = #12130007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0005
* group.element[=].display = "Vaginal"
* group.element[=].target[+].code = #16857009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0006
* group.element[=].display = "Vena ichiga (v/i)"
* group.element[=].target[+].code = #47625008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0008
* group.element[=].display = "Ekstrakorporal gemodializ"
* group.element[=].target[+].code = #766790006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0010
* group.element[=].display = "Ingalyatsion"
* group.element[=].target[+].code = #447694001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0011
* group.element[=].display = "Intestinal"
* group.element[=].target[+].code = #58731000052100
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0012
* group.element[=].display = "Intraamniotik (amniotik qavat ichiga)"
* group.element[=].target[+].code = #372458006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0013
* group.element[=].display = "Intrabursal (boʻgʻim sumkasiga)"
* group.element[=].target[+].code = #372459003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0014
* group.element[=].display = "Intravitreal"
* group.element[=].target[+].code = #418401004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0015
* group.element[=].display = "Intraglandulyar"
* group.element[=].target[+].code = #58751000052109
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0016
* group.element[=].display = "Intradiskal"
* group.element[=].target[+].code = #372465003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0017
* group.element[=].display = "Intrakardial"
* group.element[=].target[+].code = #372460008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0018
* group.element[=].display = "Intrakorneal"
* group.element[=].target[+].code = #418608002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0019
* group.element[=].display = "Intrakoronar"
* group.element[=].target[+].code = #372463005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0020
* group.element[=].display = "Intrameningeal"
* group.element[=].target[+].code = #445767008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0021
* group.element[=].display = "Intraokulyar"
* group.element[=].target[+].code = #372468001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0022
* group.element[=].display = "Intraperikardial"
* group.element[=].target[+].code = #445771006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0023
* group.element[=].display = "Intraperitoneal"
* group.element[=].target[+].code = #38239002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0024
* group.element[=].display = "Intraportal"
* group.element[=].target[+].code = #58771000052103
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0025
* group.element[=].display = "Intraprostatik"
* group.element[=].target[+].code = #419810008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0027
* group.element[=].display = "Intrasternal"
* group.element[=].target[+].code = #372470005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0028
* group.element[=].display = "Intratekal"
* group.element[=].target[+].code = #72607000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0029
* group.element[=].display = "Intraxolangiopankreatik"
* group.element[=].target[+].code = #58761000052107
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0030
* group.element[=].display = "Intratservikal"
* group.element[=].target[+].code = #372462000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0031
* group.element[=].display = "Intratserebral"
* group.element[=].target[+].code = #446540005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0032
* group.element[=].display = "Intratserebroventrikulyar"
* group.element[=].target[+].code = #420719007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0033
* group.element[=].display = "Intratsisternal"
* group.element[=].target[+].code = #418892005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0034
* group.element[=].display = "Infiltratsiya"
* group.element[=].target[+].code = #718329006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0036
* group.element[=].display = "Kavernoz boʻshliq ichiga"
* group.element[=].target[+].code = #372461007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0037
* group.element[=].display = "Koʻzning oldingi kamerasiga"
* group.element[=].target[+].code = #418821007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0038
* group.element[=].display = "Quloq orqali"
* group.element[=].target[+].code = #10547007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0040
* group.element[=].display = "Limfa ichiga"
* group.element[=].target[+].code = #372467006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0041
* group.element[=].display = "Lunjga"
* group.element[=].target[+].code = #54471007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0043
* group.element[=].display = "Milkka"
* group.element[=].target[+].code = #372457001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0044
* group.element[=].display = "Mushak ichiga (m/i)"
* group.element[=].target[+].code = #78421000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0045
* group.element[=].display = "Nazal (burunga)"
* group.element[=].target[+].code = #46713006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0046
* group.element[=].display = "Peroral (ogʻiz orqali)"
* group.element[=].target[+].code = #26643006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0047
* group.element[=].display = "Shilliq qavat ostiga"
* group.element[=].target[+].code = #419874009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0048
* group.element[=].display = "Ogʻiz boʻshligʻi shilliq qavatiga"
* group.element[=].target[+].code = #372473007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0049
* group.element[=].display = "Okulyar (koʻzga)"
* group.element[=].target[+].code = #372472002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0050
* group.element[=].display = "Orqa yukstaskleral"
* group.element[=].target[+].code = #58821000052106
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0051
* group.element[=].display = "Orofaringeal"
* group.element[=].target[+].code = #418664002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0052
* group.element[=].display = "Parenteral"
* group.element[=].target[+].code = #447202000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0053
* group.element[=].display = "Periartikulyar"
* group.element[=].target[+].code = #372474001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0054
* group.element[=].display = "Perinevral"
* group.element[=].target[+].code = #372475000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0055
* group.element[=].display = "Periodontga"
* group.element[=].target[+].code = #447052000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0056
* group.element[=].display = "Periostal"
* group.element[=].target[+].code = #420047004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0057
* group.element[=].display = "Plevra ichiga"
* group.element[=].target[+].code = #372469009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0058
* group.element[=].display = "Pufak ichiga"
* group.element[=].target[+].code = #372471009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0059
* group.element[=].display = "Rektal"
* group.element[=].target[+].code = #37161004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0060
* group.element[=].display = "Retrobulbar"
* group.element[=].target[+].code = #418321004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0061
* group.element[=].display = "Sinus ichiga"
* group.element[=].target[+].code = #419231003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0063
* group.element[=].display = "Subkonyunktival"
* group.element[=].target[+].code = #372476004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0064
* group.element[=].display = "Subretinal"
* group.element[=].target[+].code = #58831000052108
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0065
* group.element[=].display = "Suyak ichiga"
* group.element[=].target[+].code = #417255000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0066
* group.element[=].display = "Teri ichiga (t/i)"
* group.element[=].target[+].code = #372464004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0067
* group.element[=].display = "Teri orqali"
* group.element[=].target[+].code = #448598008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0068
* group.element[=].display = "Teri ostiga (t/o)"
* group.element[=].target[+].code = #34206005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0070
* group.element[=].display = "Til ostiga"
* group.element[=].target[+].code = #37839007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0071
* group.element[=].display = "Tishga"
* group.element[=].target[+].code = #372449004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0072
* group.element[=].display = "Togʻay ichiga"
* group.element[=].target[+].code = #418331006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0073
* group.element[=].display = "Transdermal"
* group.element[=].target[+].code = #45890007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0075
* group.element[=].display = "Transplatsentar (yoʻldosh orqali)"
* group.element[=].target[+].code = #446442000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0076
* group.element[=].display = "Uretral"
* group.element[=].target[+].code = #90028008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0077
* group.element[=].display = "Oʻsma atrofiga"
* group.element[=].target[+].code = #58811000052103
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0078
* group.element[=].display = "Oʻsma ichiga"
* group.element[=].target[+].code = #447122006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0081
* group.element[=].display = "Ekstraamniotik (amniotik qavat sirtiga)"
* group.element[=].target[+].code = #372453002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0082
* group.element[=].display = "Ekstrakorporal"
* group.element[=].target[+].code = #714743009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0083
* group.element[=].display = "Endotraxeopulmonal"
* group.element[=].target[+].code = #372452007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0084
* group.element[=].display = "Endotservikal"
* group.element[=].target[+].code = #372450004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0086
* group.element[=].display = "Epiderma ichiga"
* group.element[=].target[+].code = #448077001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm-0001-0087
* group.element[=].display = "Epidural"
* group.element[=].target[+].code = #404820008
* group.element[=].target[=].relationship = #equivalent