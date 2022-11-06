myLast :: [a] -> a
myLast [] = error "No end for empty lists!"
myLast [x] = x
myLast (_:xs) = myLast xs

main = do
    putStr . show . myLast $ [1, 2, 3]