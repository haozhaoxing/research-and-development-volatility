
xtset firm year
//Main Results
xtreg innovation RDvolatility human RDsubsidy growth age effort profitability debt size i.year , r
outreg2 using 1.doc,append ctitle(innovation)
xtreg innovation RDvolatility RDvolatilityRDsubsidy human RDsubsidy growth age effort profitability debt size  i.year , r
outreg2 using 1.doc,append ctitle(innovation)
//Substitution of Dependent Variables
xtreg innovation2 RDvolatility  human RDsubsidy growth age effort profitability debt size i.year , r
outreg2 using 2.doc,append ctitle(innovation2)
xtreg innovation2 RDvolatility RDvolatilityRDsubsidy human RDsubsidy  growth age effort profitability debt size  i.year , r
outreg2 using 2.doc,append ctitle(innovation2)
// Substitution of Moderating Variables
xtreg innovation RDvolatility human RDsubsidy2 growth age effort profitability debt size i.year , r
outreg2 using 3.doc,append ctitle(innovation)
xtreg innovation RDvolatility  RDvolatilityRDsubsidy2 human RDsubsidy2 growth age effort profitability debt size  i.year , r
outreg2 using 3.doc,append ctitle(innovation)
//Delete the 2012 Sample
drop if year == 2012
xtreg innovation RDvolatility human RDsubsidy growth age effort profitability debt size i.year , r
outreg2 using 1.doc,append ctitle(innovation)
xtreg innovation RDvolatility RDvolatilityRDsubsidy human RDsubsidy growth age effort profitability debt size  i.year , r
outreg2 using 1.doc,append ctitle(innovation)
