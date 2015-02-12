Oefeningen Les 1
================

Als je vast zit, vraag zeker hulp! Je kunt ook de slides bekijken, waar veel voorbeeldcode in staat.

Getting started
---------------

Zet volgende code bovenaan, om een aantal conflicten te vermijden. De exacte betekenis hiervan bekijken we een volgende les.

    import Prelude (Int, Bool(True, False), String, (+), (*), (-))

Implementeer volgende functies:

    inc		:: Int -> Int

````inc```` geeft het gegeven getal plus 1.


    double		:: Int -> Int

````double```` geeft het dubbel van de parameter.

    giveOne	:: a -> Int

````giveOne```` neemt een willekeurige waarde en geeft '1' terug.

    id		:: a -> a

````id```` geeft gewoon zijn argument terug. Hint: zoek het niet te ver!

    const	:: a -> b -> a

````const```` geeft altijd het eerste argument terug, en doet niets met het tweede argument.

#### Pattern matching

Implementeer ````&&````, de logische 'en'-operator.

Om een infix operator te implementeren, zet je er haakjes rond:

    (&&)	:: Bool -> Bool -> Bool
    (&&) <args>	=  <waarde>
    (&&) <args>	=  <waarde>



Analoog: implementeer ````||```` en ````not````.

#### Recursie

Implementeer ````faculteit :: Int -> Int````

Implementeer ````fib :: Int -> Int```` die het ````n````-de fibonacci getal teruggeeft

#### Higher order

Implementeer ````doTwice````

##### Dollar

Implementeer ````$````. Deze neemt een functie en een argument, en voert de functie uit op dit argument.

    inc $ 5
    = inc 5
    = 6

Deze functie is nuttig om haakjes te vermijden:

    inc $ inc $ inc 5	= inc (inc (inc 5))


##### Dot


Implementeer ````.````. De ````.````-operator neemt twee functies (en een argument), en voert de ene functie na de andere uit (op dit argument).

    (f . g) a	= f (g a)
    (inc . double) 5	= inc (double 5)
    (double . inc . double) 10	= double (inc (double 10))


Lijsten
-------

Implementeer ````and````, die ````True```` teruggeeft als elk element van de lijst ````True```` is.

Analoog: implementeer ````or````.

Implementeer ````sum````.

Implementeer ````length```` (met behulp van recursie).

Implementeer ````add````, die een element _op het einde_ van de lijst toevoegt. Hint: ````add a [] = a````.

Implementeer ````++````, die twee lijsten samenvoegt.

#### Higher order

Implementeer ````map````. Bekijk de slides indien je vast zit.

Implementeer ````length0````. Het berekent de lengte van een lijst, maar deze sum gebruikt enkel ````sum````, ````map````, ````giveOne````.

Implementeer ````doeElk````. Bekijk de slides indien je vast zit.

Experimenteer met deze doeElk.
