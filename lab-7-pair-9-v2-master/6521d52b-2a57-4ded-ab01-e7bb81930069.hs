sumSquares :: [Int] -> Int
sumSquares [] = 0
sumSquares x =
--sumSquares x = map (^2) x
    let squares = map (^2) x
    in sum squares
           
           
main :: IO()
main = do
    print "Enter a list of integers"
    input <- getLine 
    let intInput = map read $ words input :: [Int]
    putStr "The sum of squares is: "
    print (sumSquares(intInput))