Haskell Introduction
====================

Hier vindt je de slideshow en opdrachten voor de haskell introductieles van Zeus WPI.

Haskell installeren
===================

Linux
-----

    sudo apt-get install ghc
    ghci <bestand.hs>

Windows
-------

Computerlokaal Zuse:
- Haskell Platform (mapje op bureaublad) > winGHCi
- Maak ergens een ````Bestand.hs````
- Openen met ````Openen````Test
- Je kan het bestand nu aanpassen met de oranje ````edit````-knop in ghci

Athena:
	- Academic > Hugs
	- Maak een nieuw ````bestand.hs```` op je H: schijf
	- Laad dit in met ````openen```` in Hugs

Je eigen laptop: [www.haskell.org/platform/]. Let op, installeren duurt eventjes!
Gebruik ondertussen een computer van het lokaal.

Oefeningen
==========

Als je vast zit, vraag zeker hulp!

Getting started
---------------

Implementeer volgende functies:

    inc		:: Int -> Int

````inc```` geeft het gegeven getal plus 1.


    double		:: Int -> Int

````double```` geeft het dubbel van de parameter.

    giveOne	:: a -> Int

````giveOne```` neemt een willekeurige waarde en geeft '1' terug.

    constant	:: a -> b -> a

````constant```` geeft altijd het eerste argument terug, en doet niets met het tweede argument.


### Recursie

Implementeer ````faculteit :: Int -> Int````

Implementeer ````fib :: Int -> Int```` die het ````n````-de fibonacci getal teruggeeft

### Higher order

Implementeer ````doTwice````

Lijsten
-------

Implementeer een eigen lijst zoals in de slides.

Implementeer ````mx```` die het grootste element uit een lijst van ````Int````s haalt.
	Je mag hiervoor if gebruiken:

    if voorwaarde then expressie else expressie

Implementeer ````sum```` die alle getallen van een lijst van ````Int````s optelt.

Implementeer ````length````

Implementeer ````map````

Implementeer ````length'````, die de lengte van de lijst berekend. Hierbij gebruik je geen recursie, maar ````sum````, ````map```` en ````giveOne````. (Functienamen mogen single quotes bevatten)

Implementeer ````reverse````, die een lijst omdraait

Klaar?
------

Vond je de les interessant?

Zoveel te beter! We geven (indien genoeg interesse) een volledige lessenreeks in het tweede semester.
Toon alvast je interesse hier: [feedback haskell](http://goo.gl/forms/cjqiEPni7y)
