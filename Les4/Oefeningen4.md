Oefeningen 4
============


Lazyness
--------

Wat is het verschil tussen

    (&&)	:: Bool -> Bool -> Bool
    (&&) True a	= a
    (&&) _ _	= False

en

    (&&)		:: Bool -> Bool -> Bool
    (&&) True True	= True
    (&&) _ _		= False



QuickCheck
----------

Zie quickcheck.hs. Welke eigenschappen zijn onjuist?

State
-----

Don't panic als nog niet alles duidelijk is, volgende week gaan we hiermee verder.

Implementeer zelf State. Schrijf, met behulp van State, een algoritme dat de som neemt van een lijst.
Echter, iedere keer dat je een twee tegenkomt, tel je 2 op bij de som en telt het volgende getal dubbel.

Functies als objecten
---------------------

Set 3: vanaf pagina 3.


Lazyness pt 2
-------------

Oefeningen 9 en 10 van Set 4
