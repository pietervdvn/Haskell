-- de voorbeelden die live in de les zijn getoond, bevatten ook veel antwoorden

inc	:: Int -> Int
inc i	= i + 1


niet	:: Bool -> Bool
niet True	= False
niet False	= True

asInt	:: Bool -> Int
asInt True	= 1
asInt False	= 0

faculteit        :: Int -> Int
faculteit 0    =  1
faculteit i    =  i * faculteit (i - 1)

yell		:: String -> String
yell str	= str ++ "!"

doTwice		:: (a -> a) -> a -> a
doTwice f i	=  f (f i)



-- politiek incorrect
data Geslacht	= Jongen
		| Meisje
	deriving (Show)

ander		:: Geslacht -> Geslacht
ander Jongen	=  Meisje
ander Meisje	=  Jongen

isJongen		:: Geslacht -> Bool
isJongen Jongen		= True
isJongen _		= False

isMeisje		:: Geslacht -> Bool
isMeisje Meisje		= True
isMeisje _		= False

-- voor de kerk
magTrouwen        :: Geslacht -> Geslacht -> Bool
magTrouwen Jongen Meisje    = True
magTrouwen Meisje Jongen    = True
magTrouwen _ _        = False



data Misschien	a	= Een a
			| Geen
	deriving (Show)


veiligeDeling    :: Int -> Int -> Misschien Int
veiligeDeling _ 0    = Geen
veiligeDeling deeltal deler
                            = Een (div deeltal deler)


vindGeslacht		:: Databank -> String -> Misschien Geslacht
vindGeslacht db naam	=  vind db naam


inMisschien		:: (a -> b) -> Misschien a -> Misschien b
inMisschien f (Een a)	=  Een (f a)	-- Een b
inMisschien f Geen	=  Geen



data List a	= Elem a (List a)
		| Nil
		deriving (Show)


lengte        :: List a -> Int
lengte Nil              = 0
lengte (Elem _ tail)    = 1 + lengte tail


element        :: Int -> List a -> Misschien a
element ind Nil                = Geen
element 0 (Elem e _)        = Een e
element ind (Elem _ ls)    = element (ind - 1) ls


onEach   		:: (a -> b) -> List a -> List b
onEach _ Nil    	= Nil
onEach f (Elem i tail)  = Elem (f i) (onEach f tail)

{-



















--}

vind	:: Databank -> String -> Misschien Geslacht
vind a	=  conv . flip lookup a

conv (Just a)	= Een a
conv Nothing	= Geen


type Databank	= [(String, Geslacht)]
ugentDB = [("Louise", Meisje),("Mehmet", Jongen),("Michael", Jongen),("Ilion",Jongen),("Jeroen",Jongen),("Tom",Meisje)]
