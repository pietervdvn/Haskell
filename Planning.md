Haskell-lessen: planning
========================

Alle lessen zijn van het formaat "computer aan, hack erop los". We richten op 1 uur  - 1u15 les; daarna oefeningen waarvan de helft letterlijk "typ de slides over". Het is dus niet erg als er iemand achterop raakt tijdens de les.
Slides worden na de les, voor de oefeningen ook geupload naar de repo.

De introductieles was een warmmaker, met het idee "haskell is cool". Ik wou bij de "map"-functie raken op een zelfgedefinieerde lijst, omdat dat een krachtig voorbeeld is. Daardoor zijn er een aantal concepten niet aan bod gekomen, waar we nu wel onze tijd voor nemen.

# Les 1
> Let's get started

- Simpele basistypes (Bool, Int, List)
- Simpele functies
- Pattern matching (kleine intro met lijsten)
- Sum
- Higher order functions
- Free's in functions
- Lijst, map over lijst
- Lijst monad voorbeeld: higher order programming

- Tooling: Enkele veelvoorkomende compiler errors, :t, hoogle

Oefeningen: hogerer orde functies (.) en ($), foldr, foldl, filter, zip, const, sum, prod, length (met const+map en recursief)

# Les 2
> Functies zijn cool, constructoren zijn functies

- if/else; case
- Lambda functies
- Currying en eta-reductie
- Map met lambda over default list
- Map met currying

- ADTs
- Wat is een constructor?
- Zelf bool, maybe en lijst maken
- Advanced pattern matching
- Recursieve datatypes
- Frees in datatypes, polymorfisme
- Zelf map maken
- Maybe monad voorbeeld

- Tooling: modules

# Les 3
> Categorieën en types

- Tuples
- Functoren (List, Maybe, Either, Tuple)
- class; instance
- Show, Eq, Ord
- Wij zijn lui: deriving
- Type alias: String; html;
- Reader monad voorbeeld

- Tooling: hlint

# Les 4
> Een goede informaticus moet lui zijn; net zoals zijn taal

- Records: Faux OO
- Lazyness: wat?
- Gevolgen voor controlestructuren (if)
- Infinite lists + drop
- Infinite lists zoals fib
- Tying knots
- Overlopen boom in 1 pass
- Performance issues: seq
- State monad

- Tooling: quickcheck

# Les 5
> A Hard truth; followed by warm and fuzzy things

- Bottom, undefined, error
- Kinds
- Applicatives?
- Monads
- Voorbeeld: parser monad
- IO type + monad
- List comprehension naar do

- Tooling: compiling  code, cabal?
