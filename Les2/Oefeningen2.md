Oefeningen Les 2
================

Als je vast zit, vraag zeker hulp! Je kunt ook de slides bekijken, waar veel voorbeeldcode in staat.

Tooling
-------

Indien je de tooling-oefeningen van vorige week nog niet hebt gemaakt, doe deze dan eerst.


Boolean
-------

Maak een module waarin je je eigen ````Boolean```` implementeert.

Maak -voor je eigen boolean- een ````(&&)```` en ````(||)````

Maybe
-----

Maak een module waar je je eigen ````Maybe```` maakt (zie slides).

Implementeer ````isNothing' :: Maybe a -> Boolean```` (je eigen boolean)
Implementeer ````map````, ````doeOp```` en ````andThen```` voor Maybe.

List
----

Implementeer in een aparte module je eigen ````List````.


Simple Math
-----------
> It's how our bodies even got here
> Sinful math, the ebb and flow to multiply

> Met dank aan T. Schrijvers. Deze oefening komt uit 'Set1' van FLP 2013

(Uiteraard in een eigen module)

De datastructuur ````Exp```` stelt een wiskunde-expressie voor:

    data Exp	= Const Int
		| Add Exp Exp
		| Mul Exp Exp
		| Mul Exp Exp
		| Mod Exp Exp -- Modulo van twee subexpressies


Een voorbeeld van zo een expressie is:

    Add (Const 2) (Mul (Const 2) (Mod (Const 120) (Const 100)))

Wat gelijk is aan ````(2 + (2 * (120 `mod` 100)))````

Schrijf de functie ````eval````, die een expressie krijgt en uitrekent aan hoeveel die gelijk is.


HLint
-----

Zorg ervoor dat je geen suggestions krijgt voor elk van je modules.

Geavanceerd
-----------

Ben je al klaar?

Maak de stack-machine arithmetica. Zie ````Set1.pdf````, oefeningen 8 tot 10.



# Volgende les: volgende week

13 maart, 18u30, Mercator, S8 gaan we verder.
Je bent ook welkom op onze facebookgroep: [https://www.facebook.com/groups/443970042422378/]
