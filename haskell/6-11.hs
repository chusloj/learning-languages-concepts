import Data.List

--
-- #6
--

-- Higher order functions
app f x = f x
-- app f x = f (f x)
-- app f x = f $ f x
add1 x = x+1

-- Anonymous functions
add1anon = (\x -> x+1)
addmany = (\x y z -> x+y+z)
-- main = print(addmany 1 2 3)
-- main = print $ app (\x -> x+1) 1

-- map function
-- main = print $ map (\x -> x+1) [1,2,3,4,5] -- VV equivalent
-- main = print ( map (\x -> x+1) [1,2,3,4,5] )
-- main = print $ map (\(x,y) -> x+y) [(1,2),(3,4),(5,6)]

-- filter function
-- main = print $ filter(\x -> x > 3) [1,2,3,4,5,6]

--
-- #7 - Partial function application & Currying
--

addc1 x y = x+y
addc2 x = (\y -> x+y)
addc3 = (\x -> (\y -> x+y))
-- all equivalent

doubleList = map (\x -> 2*x)
-- main = print $ doubleList [1,2,3]

--
-- #8 - Composition
--

-- (f . g) == (\x -> f (g x)) or (\x -> f $ g x)
-- descSort = reverse . sort
-- main = print $ descSort [2,4,1]

-- map2D = map . map
-- main = print $ map2D (\x -> 2*x) [[1,1],[2,2],[3,3]] -- needs a list of lists

--
-- #9 - Folding
--

sumfold = foldr (+) 0
-- main = print $ sumfold [1,2,3]

-- foldr(\elem acc -> <expr>) <start_acc> <list>
count e = foldr (\x acc -> if e==x then acc+1 else acc) 0
-- main = print $ count 1 [1,1,2,3,4]

isAll e = foldr (\x -> (&&) $ e==x) True
isAll e = foldr(\x acc -> e==x && acc) True
-- see https://wiki.haskell.org/Fold for good diagrams on fold right and fold left



--
-- #11 - folding exercises
--
rev = foldl (\acc x -> x : acc) []

