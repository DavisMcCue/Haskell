main :: IO ()
main = do 
    putStrLn "Lab 5 - Part 3"
    putStrLn "Please Enter File Name:"
    fName <- getLine
    putStrLn "Please Enter a String to Search For:"
    sName <- getLine
    --conductString <- readFile "TestFile.txt"
    print (fName ++ " " ++ sName)
    --print (conductString)
    --let getFileName = read fileName :: String

