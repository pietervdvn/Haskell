
-- 1
data Move = Rock | Paper | Scissors
  deriving Show

-- 2
beat :: Move -> Move
beat Rock     = Paper
beat Paper    = Scissors
beat Scissors = Rock

lose :: Move -> Move
lose Rock     = Scissors
lose Paper    = Rock
lose Scissors = Paper

-- 3
data Result = Win | Lose | Draw
  deriving Show

-- 4
outcome :: Move -> Move -> Result
outcome Rock      Rock      =  Draw
outcome Paper     Paper     =  Draw
outcome Scissors  Scissors  =  Draw
outcome Rock      Paper     =  Lose
outcome Paper     Scissors  =  Lose
outcome Scissors  Rock      =  Lose
outcome _         _         =  Win

-- 5
allTrue :: [Bool] -> Bool
allTrue []     = True
allTrue (x:xs) = x && allTrue xs

oneTrue :: [Bool] -> Bool
oneTrue []     = False
oneTrue (x:xs) = x || oneTrue xs

-- 6
append :: [Int] -> [Int] -> [Int]
append []     ys = ys
append (x:xs) ys = x : append xs ys

produkt :: [Int] -> Int
produkt []     = 1
produkt (x:xs) = x * produkt xs

factorial :: Int -> Int
factorial n = produkt [1..n]

insert :: Int -> [Int] -> [Int]
insert x []     = [x]
insert x (y:ys) = if x < y
                    then x : y : ys
                    else y : insert x ys

sumIntegers :: Int -> Int -> Int
sumIntegers a b = sum [a..b]

-- 7
sumf :: [Float] -> Float
sumf []     = 0
sumf (f:fs) = f + sumf fs

productf :: [Float] -> Float
productf []      =  1
productf (f:fs)  =  f * productf fs

piSum :: Float -> Float
piSum n = 8 * sumf [ 1/(4*i+1)/(4*i+3) | i <- [0..n]]
piSum2 :: Float -> Float
piSum2 n = 8 * sumf [ 1/i/(i+2) | i <- [1,5..4*n+1]]

piProd :: Float -> Float
piProd n = 4 * productf [ i * (i+2) / (i+1)^2 | i <- [2,4..2*n] ]

-- 8
data Exp  =  Const Int
          |  Add  Exp Exp
          |  Sub  Exp Exp
          |  Mul  Exp Exp
  deriving Show

eval :: Exp -> Int
eval (Const i)    =  i
eval (Add e1 e2)  =  eval e1 + eval e2
eval (Sub e1 e2)  =  eval e1 - eval e2
eval (Mul e1 e2)  =  eval e1 * eval e2

data Inst = IPush Int | IAdd | ISub | IMul
  deriving Show
type Prog   = [Inst]
type Stack  = [Int]

-- 9
runtimeError :: Stack
runtimeError = error "Runtime error."

execute :: Inst -> Stack -> Stack
execute (IPush i)  s        =   i : s
execute IAdd       (x:y:s)  =   y + x : s
execute ISub       (x:y:s)  =   y - x : s
execute IMul       (x:y:s)  =   y * x : s
execute i          s        =   runtimeError

run :: Prog -> Stack -> Stack
run []     s = s
run (x:xs) s = run xs (execute x s)

-- 10
compile :: Exp -> Prog
compile (Const i) = [IPush i]
compile (Add a b) = compile a ++ compile b ++ [IAdd]
compile (Sub a b) = compile a ++ compile b ++ [ISub]
compile (Mul a b) = compile a ++ compile b ++ [IMul]
