sumSquares :: [Int] -> [Int]
sumSquares x = sumSquareHelper x
sumSquareHelper [] = [0]
sumSquareHelper (x:xs) = x*x : sumSquareHelper xs
            
--sumSquares :: [Int] -> Int
--sumSquares [] = 0
--sumSquares (x:xs) = (^2) x + sumSquares xs
           
main :: IO()
main = do
    print "Lab 7 - Part 2"
    print "Enter a list of integers"
    input <- getLine 
    let intInput = map read $ words input :: [Int]
    putStr "The sum of squares is: "
    print (sumSquares(intInput))