module Parser where

import ParserPrimitives
import Data.Char (digitToInt)

isChar		:: Char -> Parser Char
isChar c	= do	c'	<- prsChar
			if c == c' then return c
				else abort

isString	:: String -> Parser String
isString str	= mapM isChar str	-- the extreme short version

-- Checks if it is one of these characters
isOneOf		:: [Char] -> Parser Char
isOneOf []	= abort
isOneOf (c:cs)	= isChar c \/ isOneOf cs

-- The way most of you will make it. Note: we return the string
isString'	:: String -> Parser String
isString' ""	=  return ""
isString' str@(c:cs)
		= do	isChar c
			isString cs
			return $ str

prsBool		:: Parser Bool
prsBool	= (do	isString "True"
		return True)
	  \/(do isString "False"
		return False)	-- other cases will automatically abort per behaviour of isString

prsInt	:: Parser Int
prsInt	= prsInt' 0

prsInt'	:: Int -> Parser Int
prsInt' acc
	= do	cur	<- isOneOf ['0'..'9']
		let n	= acc*10 + digitToInt cur
		rec	<- prsInt' n /\ return n
		return rec

{-

runParser prsBool "True"
runParser prsBool "False"

runParser prsInt "123"


-}
