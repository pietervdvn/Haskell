import Prelude (Int, Bool(True, False), String, (+), (*), (-))

-- Getting started

inc	:: Int -> Int
inc i	= i + 1

double		:: Int -> Int
double i	=  i * 2

giveOne		:: a -> Int
giveOne	_	=  1


id		:: a -> a
id a		=  a

const		:: a -> b -> a
const a _	=  a

-- Pattern matching

(&&)		:: Bool -> Bool ->Bool
(&&) True True	=  True
(&&) _ _	=  False

(||)		:: Bool -> Bool -> Bool
(||) False False=  False
(||) _ _	=  True

not		:: Bool -> Bool
not True	=  False
not False	=  True


-- Recursie

faculteit	:: Int -> Int
faculteit 0	=  1
faculteit i	=  i * faculteit (i - 1)

fib		:: Int -> Int
fib 0		=  1
fib 1		=  1
fib i		=  fib (i - 1) + fib (i - 2)

-- Higher order

doTwice		:: (a -> a) -> a -> a
doTwice f a	= f (f a)


infixr 9 $
($)		:: (a -> b) -> a -> b
($) f a		=  f a

(.)		:: (b -> c) -> (a -> b) -> a -> c
(.) f g a	=  f (g a)

flip		:: (a -> b -> c) -> b -> a -> c
flip f b a	=  f a b

-- Lists

and		:: [Bool] -> Bool
and []		=  True
and (False:bs)	=  False
and (_:bs)	=  and bs

or		:: [Bool] -> Bool
or []		=  False
or (True:bs)	=  True
or (_:bs)	=  or bs

sum		:: [Int] -> Int
sum []		=  0
sum (i:is)	=  i + sum is

length		:: [a] -> Int
length []	=  0
length (_:as)	=  1 + length as

add		:: a -> [a] -> [a]
add a []	=  [a]
add a (a':as)	=  a':add a as

(++)		:: [a] -> [a] -> [a]
(++) [] as'	=  as'
(++) (a:as) as'	=  a : (as ++ as')

-- Higer order

map		:: (a -> b) -> [a] -> [b]
map _ []	=  []
map f (a:as)	=  f a : map f as

length0		:: [a] -> Int
length0 as	=  sum $ map giveOne as

doeElk		:: [a] -> [(a -> b)] -> [b]
doeElk _ []	=  []
doeElk as (f:fs)=  map f as ++ (as `doeElk` fs)
