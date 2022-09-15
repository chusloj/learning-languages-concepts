import Test.QuickCheck
import Data.Either

--
-- #17 - Monads
--

-- maybeadd mx y = mx >>= (\x -> Just $ x+y)
-- maybeadd mx my = mx >>= (\x -> my >>= (\y -> Just $ x+y))

-- using "return" allows haskell to deal with more standard numbers/types
maybeadd mx my = mx >>= (\x -> my >>= (\y -> return $ x+y))

-- succint "do" notation
-- monadd mx my = do
-- 	x <- mx
-- 	y <- my
-- 	return $ x+y

-- main = print $ monadd (Just 1) (Just 2)


--
-- #18 - QuickCheck
--

-- ghci> prop x xs = (length xs) + 1 == length $ x:xs
-- install with cabal install QuickCheck

-- prop a b = (a+b) == (b+a)

prop xs =
 not (null xs) ==>
 (length $ tail xs) == ((length xs) - 1)

-- to test:
-- ghci> :load 17-22.hs

--
-- #19 - Infinite Lists
--

ones = 1 : ones
-- main = print $ take 5 ones

f 0 = 0
f 1 = 1
f n = (f $ n-1) + (f $ n-2) -- bad: everything is recomputed!

fibs = 0 : 1 : zipWith (+) fibs (tail fibs)
-- zipWith - zips 2 lists element-wise

--
-- #21 - data, type and newtype
--

data Color = RGB (Int, Int, Int)
type Palette = [Color] -- "type" is an alias for types

-- newtype
-- data with only one constructor and only one field

newtype Name = Name String

--
-- #22 - Either
--

feith = either (\l -> "Number") (\r -> r)
-- main = print $ feith (Right "Hello")

main = print $ partitionEithers [Left 1, Left 2, Right "Hello"]
