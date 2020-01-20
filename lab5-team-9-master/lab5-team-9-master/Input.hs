main :: IO ()
main = do 
    putStrLn "Lab 5 - Part 3"
    putStrLn "Please enter your First Name:"
    fName <- getLine
    putStrLn "Please enter your Last Name:"
    lName <- getLine
    putStrLn "Please enter your Age:"
    age <- getLine
    let getage = read age :: Integer
    putStrLn (if getage < 5
              then "Favorite Color?"
              else "Favorite Tv Show:")
    answer <- getLine 
    print ("Your name is " ++ fName ++ " " ++ lName ++ "." ++ "You are " ++ age ++ " years old" ++ "." ++ " You Like " ++ answer ++ ".")


