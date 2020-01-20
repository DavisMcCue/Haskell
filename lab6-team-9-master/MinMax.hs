import Text.Read 

maybemin :: Ord a => Maybe a -> Maybe a -> Maybe a
maybemin (Just a) (Just b) = Just $ min a b

maybemax :: Ord a => Maybe a -> Maybe a -> Maybe a
maybemax (Just a) (Just b) = Just $ max a b 

main :: IO()
main = do
    putStrLn "Lab 6 - Part 3"
    putStrLn "Enter first Number"
    firstNumber <- getLine
    let getFirstNumber = readMaybe firstNumber :: Maybe Int
    putStrLn "Enter Second Number"
    secondNumber <- getLine
    let getSecondNumber = readMaybe secondNumber :: Maybe Int
    print(maybemin getFirstNumber getSecondNumber)
    print(maybemax getFirstNumber getSecondNumber)
    --print getFirstNumber
    --print getSecondNumber