-- Write printAMessage here
printAMessage :: Show a => a -> IO ()
printAMessage x = putStrLn (show x)

-- Write division here
division :: Double -> Double -> Maybe Double
division x y
    | x == y    = Nothing
    | otherwise = Just (x / y)

-- Write factorial here
factorial :: Int -> Int
factorial 0 = 1
factorial 1 = 1
factorial n = n * factorial (n - 1)

-- Write factList here
factList :: Int -> [Int]
factList n = [factorial i | i <- [1..n]]

-- Write merge here
merge :: [Int] -> [Int] -> [Int]
merge [] ys = ys
merge xs [] = xs
merge (x:xs) (y:ys)
    | x <= y    = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

main = do -- Replace this with your testing code
    printAMessage "Hello, Haskell!"
    print (division 10 5)
    print (factorial 5)
    print (factList 5)
    print (merge [1, 4, 5, 7] [2, 3, 6])