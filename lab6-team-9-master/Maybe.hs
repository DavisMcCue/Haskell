import Text.Read 

main :: IO()
main = print "Lab 6 - Part 2" >>
    print "What is your age?"  >>
    getLine >>= \ age ->
    let getage = readMaybe age :: Maybe Int
    in putStrLn (if getage > Just 30
        then "you are wise" ++ "\n" ++ "you are " ++ age
        else "\n" ++"You did not enter a valid age" ++  "\n" ++ "You are " ++ age)