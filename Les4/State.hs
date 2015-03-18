module State where


data State s a	= State {runstate	:: s -> (s,a)}

put	:: s -> State s ()
put s	= State (\_ -> (s,()))

get	:: State s s
get	= State (\s -> (s,s))

andThen	:: State s a -> (a -> State s b) -> State s b
andThen action	a2actionb
	= State $ \beginState ->
		let 	(midState, a)	= runstate action beginState
			(endState, b)	= runstate (a2actionb a) midState in
			(endState, b)
