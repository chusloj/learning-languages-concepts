-- 
-- #5 - List Exercises
--

isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) =
 (x <= y) && isAsc (y:xs)


hasPath [] x y = x == y
hasPath xs x y
 | x == y = True
 | otherwise =
    let xs' = [ (n,m) | (n,m) <- xs, n /= x] in
    or [ hasPath xs' m y | (n,m) <- xs, n == x]


main = print(hasPath [(1,2), (2,3), (3,2), (4,3), (4,5)] 1 3)