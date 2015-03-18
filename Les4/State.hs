module State where

import Prelude hiding (return,sum)

data State s a	= State {runstate	:: s -> (s,a)}

put	:: s -> State s ()
put s	= State (\_ -> (s,()))

get	:: State s s
get	= State (\s -> (s,s))

return	:: a -> State s a
return a=  State (\s -> (s,a))

andThen	:: State s a -> (a -> State s b) -> State s b
andThen action	a2actionb
	= State $ \beginState ->
		let 	(midState, a)	= runstate action beginState
			(endState, b)	= runstate (a2actionb a) midState in
			(endState, b)


andThen'	:: State s a -> State s b -> State s b
andThen' action1 action2
	= action1 `andThen` (\_ -> action2)

sum	:: [Int] -> Int
sum is	=  snd $ runstate sum' is

sum'	:: State [Int] Int
sum'	=  get `andThen` (\is ->
		if null is then return 0 else
		let i	= head is in
		put (tail is) `andThen'`
		sum' `andThen` (\recSum -> return $ i + recSum)
		)


sum'	= do	is	<- get
		if null is then
			return 0
		else do
			put (tail is)
			recursiveSum	<- sum'
			return $ recursiveSum + head is
