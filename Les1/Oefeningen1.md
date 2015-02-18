Oefeningen Les 1
================

Als je vast zit, vraag zeker hulp! Je kunt ook de slides bekijken, waar veel voorbeeldcode in staat.

Getting started
---------------

Zet volgende code bovenaan. Deze code zorgt ervoor dat Haskell een aantal ingebouwde functies 'vergeet', zodat wij ze opnieuw kunnen maken.

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

##### Flip

Implementeer ````flip````, die een functie neemt en zijn argumenten omdraait. (Ofwel: een functie neemt, twee argumenten en die argumenten in omgekeerde volgorde toepast)

   flip f b a	= f a b


Lijsten
-------

Implementeer ````and````, die ````True```` teruggeeft als elk element van de lijst ````True```` is.

Analoog: implementeer ````or````.

Implementeer ````sum````.

Implementeer ````length```` (met behulp van recursie).

Implementeer ````add````, die een element _op het einde_ van de lijst toevoegt. Hint: ````add a [] = a````.

Implementeer ````++````, die twee lijsten samenvoegt.

Implementeer ````concat````, die een lijst van lijsten samenvoegt tot een lijst. Hing: ````concat :: [[a]] -> [a]````

#### Higher order

Implementeer ````map````. Bekijk de slides indien je vast zit.

Implementeer ````length0````. Het berekent de lengte van een lijst, maar deze sum gebruikt enkel ````sum````, ````map````, ````giveOne````.

Implementeer ````doeElk````. Bekijk de slides indien je vast zit.

Experimenteer met deze doeElk.

Implementeer ````concatMap````. Bekijk de slides indien je vast zit.

Experimenteer met concatMap.

#### Reduce

Implementeer  ````reduce````

Herimplementeer ````sum````,````product```` met reduce.

Implementeer  ````any````. Deze kijkt of er minstens 1 True in de lijst zit, zoniet geeft die false.


Tooling
-------

Start een nieuwe, blanco ````ghci````-sessie, zodat we weer aan alle ingebouwde functies kunnen.

Wat is het type van ````(+)````, ````div````, ````mod````, ````sum````, ````max````, ````maximum````. Wat denk je dat deze functies doen?

Wat is het type van ````(>>=)````? Vergelijk dit type met dat van ````concatMap````. Kun je ````>>=```` gebruiken ipv ````concatMap````?

Importeer ````Data.Applicative```` (dus typ in ghci:````import Data.Applicative```` ).
Wat is het type van ````<*>````? Vergelijk dit met ````doeElk````. Kun je ````<*>```` gebruiken ipv ````doeElk````.


### Hoogle

Wat zijn de ingebouwde functies met type ````Bool -> Bool -> Bool````?

Is er een functie, die gegeven een functie ````a -> Bool```` en een lijst ````[a]````, een nieuwe lijst geeft, met enkel elementen waar ````f a == True````?

Is er een ingebouwde functie die, uit een geheel getal ````i :: Int```` en een element ````a````  een lijst met ````i```` elementen maakt?

Is er een functie, die ````i```` elementen laat vallen van een lijst?

# Volgende les: over twee weken

Volgende week is het Vlaamse Programmeerwedstrijd, de meesten onder ons (inclusief uw docent) zullen dus maar laat weer in Gent zijn.

Zet dus maar op uw agenda: 4 maart, 18u30, Mercator, S8. We zien je dan voor het deel 2 (van veel) van onze avonturen een Haskellandia!
