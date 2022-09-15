--
-- #12 - Records
--

data Person = Person { name :: String,
						age :: Int }

-- greet person = "Hi " ++ name person
-- also made below

-- main = do
 -- let guy = Person {name="John", age=20}
 -- print $ greet guy

--
-- #13 - Typeclasses
--

-- ghci> :info Num
data Temperature = C Float | F Float

instance Eq Temperature where
	(==) (C n) (C m) = n == m
	(==) (F n) (F m) = n == m
	(==) (C c) (F f) = (1.8*c + 32) == f
	(==) (F f) (C c) = (1.8*c + 32) == f

-- main = do
-- 	let temp1 = C 10
-- 	-- let temp2 = C 10
-- 	let temp2 = F 10
-- 	print $ temp1 == temp2

--
-- #14 - Maybe
--

-- If the result is valid, return it. Otherwise, return the Nothing type
safediv a b = if b == 0 then Nothing else Just $ div a b
-- main = print $ safediv 10 5

--
-- #15 - IO
--

hw = putStrLn "Hello World!"
-- see :t ()
-- That's literally just a mapping from () -> ()
-- test this in ghci

-- action
greet = do
	putStrLn "What is your name?"
	name <- getLine
	putStrLn $ "Hello " ++ name ++ " ."

-- main = greet

--
-- #16 - Type Inference
--
