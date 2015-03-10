Oefeningen 3
============

Writer
======

Maak zelf een 'Writer' implementatie (met docstrings). Je kunt spieken bij Writer.hs, maar weerhou je van kopiëren.
Voorzie ook docstrings, en maak een html met haddock, zorg voor geen hlint-suggesties (als je niet teveel tijd verliest met de tools te installeren).

Schrijf een berekening die twee getallen deelt. Indien de noemer nul is, wordt een event gelogd en nul teruggeven.
Schrijf een functie die elk elk getal uit een lijst deelt door het andere:

    divideEach [10,20,30,3,0] [2,5,0,3,0]	== Writer ["Started divideEach", "Could not divide 30 by zero", "Could not divide 0 by zero"] [5,4,0,1,0]
