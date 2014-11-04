Haskell Introduction
====================

Hier vindt je de slideshow en opdrachten voor de haskell introductieles van Zeus WPI.

Oefeningen
==========

Getting started
---------------

Implementeer volgende functies:

    const	:: a -> b -> a

````const```` geeft altijd het eerste argument terug, en doet niets met het tweede argument.

    giveOne	:: a -> Int

````giveOne```` neemt een willekeurige waarde en geeft '1' terug.


    inc		:: Int -> Int

````inc```` geeft het gegeven getal plus 1.

### Recursie

Implementeer ````factorial :: Int -> Int````
Implementeer ````fib :: Int -> Int```` die het ````n````-de fibonacci getal teruggeeft

### Higher order

Implementeer ````doTwice````

Lijsten
-------

Implementeer een eigen lijst zoals in de slides.

Implementeer ````mx```` die het grootste element uit een lijst van ````Int````s haalt.

Implementeer ````sum```` die alle getallen van een lijst van ````Int````s optelt.

Implementeer ````length````.

Implementeer ````map````

Implementeer ````length0````, die de lengte van de lijst berekend. Hierbij gebruik je geen recursie, maar ````sum````, ````map```` en ````giveOne````
