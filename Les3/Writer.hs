module Writer where

import Prelude hiding (return)

import Data.Monoid

-- | The data type that represents a writer
data Writer log a	=  Writer log a
	deriving (Show)


-- | Adds a value to the log
tell	:: (Monoid log) => log -> Writer log ()
tell log	= Writer log ()

return	:: (Monoid log) =>  a -> Writer log a
return a	= Writer mempty a


-- | Executes the first writer and then the second writer with the a from the first, with side effects
andThen	:: (Monoid log) => Writer log a -> (a -> Writer log b) -> Writer log b
andThen (Writer log a) a2wb
	= let	(Writer log' b)	= a2wb a in
		Writer (mappend log log') b

-- | Executes the first writer, throws away its result (but not its logs), then evaluates the second parser
andThen' wa wb
	= wa `andThen` const wb
