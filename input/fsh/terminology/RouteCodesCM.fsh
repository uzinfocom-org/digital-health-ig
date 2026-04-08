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

* group.element[+].code = #pharm.0001.00001
* group.element[=].display = "Arteriya ichiga"
* group.element[=].target[+].code = #58100008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00002
* group.element[=].display = "Bachadon ichiga"
* group.element[=].target[+].code = #62226000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00003
* group.element[=].display = "Bosh miya yoki yurak qorinchasi ichiga"
* group.element[=].target[+].code = #420719007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00004
* group.element[=].display = "Boʻgʻim ichiga"
* group.element[=].target[+].code = #12130007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00005
* group.element[=].display = "Vaginal"
* group.element[=].target[+].code = #16857009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00006
* group.element[=].display = "Vena ichiga (v/i)"
* group.element[=].target[+].code = #47625008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00008
* group.element[=].display = "Ekstrakorporal gemodializ"
* group.element[=].target[+].code = #766790006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00010
* group.element[=].display = "Ingalyatsion"
* group.element[=].target[+].code = #447694001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00011
* group.element[=].display = "Intestinal"
* group.element[=].target[+].code = #58731000052100
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00012
* group.element[=].display = "Intraamniotik (amniotik qavat ichiga)"
* group.element[=].target[+].code = #372458006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00013
* group.element[=].display = "Intrabursal (boʻgʻim sumkasiga)"
* group.element[=].target[+].code = #372459003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00014
* group.element[=].display = "Intravitreal"
* group.element[=].target[+].code = #418401004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00015
* group.element[=].display = "Intraglandulyar"
* group.element[=].target[+].code = #58751000052109
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00016
* group.element[=].display = "Intradiskal"
* group.element[=].target[+].code = #372465003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00017
* group.element[=].display = "Intrakardial"
* group.element[=].target[+].code = #372460008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00018
* group.element[=].display = "Intrakorneal"
* group.element[=].target[+].code = #418608002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00019
* group.element[=].display = "Intrakoronar"
* group.element[=].target[+].code = #372463005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00020
* group.element[=].display = "Intrameningeal"
* group.element[=].target[+].code = #445767008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00021
* group.element[=].display = "Intraokulyar"
* group.element[=].target[+].code = #372468001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00022
* group.element[=].display = "Intraperikardial"
* group.element[=].target[+].code = #445771006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00023
* group.element[=].display = "Intraperitoneal"
* group.element[=].target[+].code = #38239002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00024
* group.element[=].display = "Intraportal"
* group.element[=].target[+].code = #58771000052103
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00025
* group.element[=].display = "Intraprostatik"
* group.element[=].target[+].code = #419810008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00027
* group.element[=].display = "Intrasternal"
* group.element[=].target[+].code = #372470005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00028
* group.element[=].display = "Intratekal"
* group.element[=].target[+].code = #72607000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00029
* group.element[=].display = "Intraxolangiopankreatik"
* group.element[=].target[+].code = #58761000052107
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00030
* group.element[=].display = "Intratservikal"
* group.element[=].target[+].code = #372462000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00031
* group.element[=].display = "Intratserebral"
* group.element[=].target[+].code = #446540005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00032
* group.element[=].display = "Intratserebroventrikulyar"
* group.element[=].target[+].code = #420719007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00033
* group.element[=].display = "Intratsisternal"
* group.element[=].target[+].code = #418892005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00034
* group.element[=].display = "Infiltratsiya"
* group.element[=].target[+].code = #718329006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00036
* group.element[=].display = "Kavernoz boʻshliq ichiga"
* group.element[=].target[+].code = #372461007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00037
* group.element[=].display = "Koʻzning oldingi kamerasiga"
* group.element[=].target[+].code = #418821007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00038
* group.element[=].display = "Quloq orqali"
* group.element[=].target[+].code = #10547007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00040
* group.element[=].display = "Limfa ichiga"
* group.element[=].target[+].code = #372467006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00041
* group.element[=].display = "Lunjga"
* group.element[=].target[+].code = #54471007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00043
* group.element[=].display = "Milkka"
* group.element[=].target[+].code = #372457001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00044
* group.element[=].display = "Mushak ichiga (m/i)"
* group.element[=].target[+].code = #78421000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00045
* group.element[=].display = "Nazal (burunga)"
* group.element[=].target[+].code = #46713006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00046
* group.element[=].display = "Peroral (ogʻiz orqali)"
* group.element[=].target[+].code = #26643006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00047
* group.element[=].display = "Shilliq qavat ostiga"
* group.element[=].target[+].code = #419874009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00048
* group.element[=].display = "Ogʻiz boʻshligʻi shilliq qavatiga"
* group.element[=].target[+].code = #372473007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00049
* group.element[=].display = "Okulyar (koʻzga)"
* group.element[=].target[+].code = #372472002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00050
* group.element[=].display = "Orqa yukstaskleral"
* group.element[=].target[+].code = #58821000052106
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00051
* group.element[=].display = "Orofaringeal"
* group.element[=].target[+].code = #418664002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00052
* group.element[=].display = "Parenteral"
* group.element[=].target[+].code = #447202000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00053
* group.element[=].display = "Periartikulyar"
* group.element[=].target[+].code = #372474001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00054
* group.element[=].display = "Perinevral"
* group.element[=].target[+].code = #372475000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00055
* group.element[=].display = "Periodontga"
* group.element[=].target[+].code = #447052000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00056
* group.element[=].display = "Periostal"
* group.element[=].target[+].code = #420047004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00057
* group.element[=].display = "Plevra ichiga"
* group.element[=].target[+].code = #372469009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00058
* group.element[=].display = "Pufak ichiga"
* group.element[=].target[+].code = #372471009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00059
* group.element[=].display = "Rektal"
* group.element[=].target[+].code = #37161004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00060
* group.element[=].display = "Retrobulbar"
* group.element[=].target[+].code = #418321004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00061
* group.element[=].display = "Sinus ichiga"
* group.element[=].target[+].code = #419231003
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00063
* group.element[=].display = "Subkonyunktival"
* group.element[=].target[+].code = #372476004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00064
* group.element[=].display = "Subretinal"
* group.element[=].target[+].code = #58831000052108
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00065
* group.element[=].display = "Suyak ichiga"
* group.element[=].target[+].code = #417255000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00066
* group.element[=].display = "Teri ichiga (t/i)"
* group.element[=].target[+].code = #372464004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00067
* group.element[=].display = "Teri orqali"
* group.element[=].target[+].code = #448598008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00068
* group.element[=].display = "Teri ostiga (t/o)"
* group.element[=].target[+].code = #34206005
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00070
* group.element[=].display = "Til ostiga"
* group.element[=].target[+].code = #37839007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00071
* group.element[=].display = "Tishga"
* group.element[=].target[+].code = #372449004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00072
* group.element[=].display = "Togʻay ichiga"
* group.element[=].target[+].code = #418331006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00073
* group.element[=].display = "Transdermal"
* group.element[=].target[+].code = #45890007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00075
* group.element[=].display = "Transplatsentar (yoʻldosh orqali)"
* group.element[=].target[+].code = #446442000
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00076
* group.element[=].display = "Uretral"
* group.element[=].target[+].code = #90028008
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00077
* group.element[=].display = "Oʻsma atrofiga"
* group.element[=].target[+].code = #58811000052103
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00078
* group.element[=].display = "Oʻsma ichiga"
* group.element[=].target[+].code = #447122006
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00081
* group.element[=].display = "Ekstraamniotik (amniotik qavat sirtiga)"
* group.element[=].target[+].code = #372453002
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00082
* group.element[=].display = "Ekstrakorporal"
* group.element[=].target[+].code = #714743009
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00083
* group.element[=].display = "Endotraxeopulmonal"
* group.element[=].target[+].code = #372452007
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00084
* group.element[=].display = "Endotservikal"
* group.element[=].target[+].code = #372450004
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00086
* group.element[=].display = "Epiderma ichiga"
* group.element[=].target[+].code = #448077001
* group.element[=].target[=].relationship = #equivalent

* group.element[+].code = #pharm.0001.00087
* group.element[=].display = "Epidural"
* group.element[=].target[+].code = #404820008
* group.element[=].target[=].relationship = #equivalent