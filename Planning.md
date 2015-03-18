Haskell-lessen: planning
========================

Alle lessen zijn van het formaat "computer aan, hack erop los". We richten op 1 uur  - 1u15 les; daarna oefeningen waarvan de helft letterlijk "typ de slides over". Het is dus niet erg als er iemand achterop raakt tijdens de les.
Slides worden na de les, voor de oefeningen ook geupload naar de repo.

De introductieles was een warmmaker, met het idee "haskell is cool". Ik wou bij de "map"-functie raken op een zelfgedefinieerde lijst, omdat dat een krachtig voorbeeld is. Daardoor zijn er een aantal concepten niet aan bod gekomen, waar we nu wel onze tijd voor nemen.

# Les 1 (week 2)
18/02
> Let's get started

- Simpele basistypes (Bool, Int, List)
- Simpele functies
- Pattern matching (kleine intro met lijsten)
- Sum
- Free's in functions
- Higher order functions
- Lijst, map over lijst
- Lijst monad voorbeeld: higher order programming

- Tooling: Enkele veelvoorkomende compiler errors, :t, hoogle

Oefeningen: hogerer orde functies (.) en ($), foldr, foldl, filter, zip, const, sum, prod, length (met const+map en recursief)


# VPW
25/02
> Geen les

# Les 2
04/03
> Functies zijn cool, constructoren zijn functies
10p (~4 S9eners), 2-3 stack machines


- if/else; case
- Lambda functies
- Currying en eta-reductie
- Map met lambda over default list
- Map met currying

- Simpele ADTs (zelf Bool maken, een Person voorbeeld)
- Een constructor is een functie
- Pattern matching met constructoren

- Maybe monad voorbeeld
- Tooling: modules + imports
- Tooling: hlint


# Les 3
11/03
> Categorieën en types
10p, 7p writer afgewerkt,

- guards
- let en where

- class; instance
- Show, Eq, Ord
- Wij zijn lui: deriving
- Type alias: String; html;
- Functoren + fmap (List, Maybe, Either, Tuple)
- instance declareren

- Tooling: haddock
- Writer monad voorbeeld

# Les 4
18/03
> Een goede informaticus moet lui zijn; net zoals zijn taal

- Records: Faux OO (kort)

- Lazyness: wat?
- Gevolgen voor controlestructuren (if, shortcircuit of && : True True vs True a = a, and/or lazy)
- Infinite lists + drop 5 nats
- Infinite lists zoals fib
- Tying knots

- Overlopen lijst in 1 pass (minimum berekenen en overal)
- Performance issues: seq

- State monad voorbeeld
- Tooling: quickcheck

# Les 5 (week 7)
25/03
> A Hard truth; followed by warm and fuzzy things

- Bottom, undefined, error
- Kinds
- Applicatives?
- Monads
- Voorbeeld: parser monad
- IO type + monad
- List comprehension naar do [ (x,y) | x <- xs, y <- ys]

- Tooling: compiling code, cabal

- Project: eventueel in groep, als zelf een goed idee, ook goed (bv Number Seven). Default: while, met of zonder html printing

# Interessant onderwerp, Project: hulpavond
01/04
> We zien wel wat we deze les doen :p

- Lambda-calculus
- Curry-Howard
- Typeclassopedia -> gaat te vroeg komen voor velen


#Paasreces:
8/04
15/04

# Project: hulpavond/deadline
22/04

# Project: voorstellingsavond + kom helpen aan mijn project avond (lang) (week 10)
29/04

# Haskellhacking of coole talk
22/04

# Haskellhacking (week 12, EOF)
29/04
