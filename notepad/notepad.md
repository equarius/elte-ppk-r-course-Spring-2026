# Statsprogramming final assignment
## EDA
- Szerintem legyen meg ennek az íve, úgy lenne logikus. Az elején feltérképezem a változókat, majd utána recode + long format, újra feltérképezés.
- Itt majd szét kell szedni chunkokra a végleges EDA lépéseket, mert így nincs nagyon értelme.
	- Egyenként kellene a faktorokat explorálni és megmutatni, hogy mit és miért kellene korrigálni, átkódolni.
### datwiz
#### numeric
Ezeket egyszerűen átrakom long formatba.  Ez gyakorlatilag csak és kizárólag a number of credits.
#### factor
Szerintem ezt is lehet facettel, nem? És akkor lehetne barplot. 72. sorba került most ez, pivot_longerrel csináltam meg. Szét kell szedni majd több cellára, főleg a hometown-t.

## Additional notes
### EDA
- Majd a numeric és a factor változókat követően ide visszatérni. Itt majd a victory oszlopban: "and" -- ezeket hogyan fogom majd megmutatni, hogy újra kell kódolni? Splitelni, majd pedig azt explorálni?
### NB
- rank at graduation -- itt amúgy szerintem érdekes, hogy single engine-be olyanok kerültek, akik 2nd liutenantok lettek később -- szelekció?
- score és origin of state kapcsolata: NY, CA, IL és MO kiemelkedő. Lehet, hogy a legsikeresebb osztályok egy adott helyről származtak.
- az szerintem látszik, hogy a városnak ebben nem volt nagy szerepe. Ha megnézzük, hogy hányan származtak valahonnan és ehhez hogyan aránylott az, hogy hány győzelem volt, akkor annyira nem látunk kapcsolatot. Itt az látszik, hogy nincs nagy kapcsolat ebben. Ez is azt mutatja, hogy elit hely volt és az ország egész területéről érkeztek.
- Itt jól látszik, hogy csak single engine pilótáknak volt győzelme és közülük is csak egy jelentős kisebbségnek, 10%-nak. A kérdés felmerül: a jelen levő tényezők közül volt-e olyan, ami ehhez hozzájárult? *szerintem ez egy jó felütés, ezt követően pedig akkor a háttérismeretek alapján lehet azt mondani, hogy mik azok, amik felmerülnek*
- **Csináltam egy olyat, hogy long format, csoportosítani names és value, minden kategóriára összeadtam a győzelmek számát és utána sorba rendeztem. Ez megadta, hogy melyik kategóriából melyik szinten volt a legtöbb győzelem, illetve ha head(20) akkor az megmutatja, hogy mi volt az a 20 alkategória, ami a legtöbb győzelmet képviselte.** Ennek alapján a class és a state volt a 2 legmeghatározóbb tényező. Volt még hometown, aminél lehetett kiemelkedő kategória.