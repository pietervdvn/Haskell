
import Test.QuickCheck

import Prelude hiding ((&&))

(&&)		:: Bool -> Bool -> Bool
(&&) True a	= a
(&&) _ _	= False


-- usage: type 'quickCheck andProperty' in ghci
andProperty	:: Bool -> Bool -> Bool
andProperty b1 b2
		= b1 && (b2 || b1) == b1

andProperty0	:: Bool -> Bool -> Bool
andProperty0 b1 b2
		= b1 && b2 == b2

takeProperty	:: [Char] -> Bool
takeProperty str
		= 5 == length (take 5 str)
