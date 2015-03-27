-- | Implements the parser primitives
module ParserPrimitives (Parser, prsChar, (/\),(\/), abort, runParser ) where

data Parser a	= Parser {runParser :: String -> [(a,String)]}

instance Monad Parser where
	return a	= Parser (\str -> [(a, str)])
	(>>=) pa a2pb	= Parser (\beginStr ->
					let midResults	= runParser pa beginStr in
					concatMap (combine a2pb) midResults)

combine	:: (a -> Parser b) -> (a, String) -> [(b,String)]
combine a2pb (a,unparsed)
	= runParser (a2pb a) unparsed

-- |Gets the next char, or aborts if there is none
prsChar	:: Parser Char
prsChar	=  Parser (\str -> if null str then [] else [(head str, tail str)])

-- |Tries the first parser. If it fails, the second
(\/) 		:: Parser a -> Parser a -> Parser a
(\/) a b	=  Parser (\str -> let midResult = runParser a str in
			if null midResult  then runParser b str
					   else midResult)

-- Tries both parsers
(/\)		:: Parser a -> Parser a -> Parser a
(/\) a b	=  Parser (\str ->
			let midResultA = runParser a str in
			let midResultB = runParser b str in
			midResultA ++ midResultB)

abort	:: Parser a
abort	= Parser (\_ -> [])
