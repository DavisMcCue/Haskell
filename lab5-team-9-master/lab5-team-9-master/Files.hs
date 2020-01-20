import Data.List 

main :: IO()
main = do
    print "Lab 5 - Part 4"
    print "name of the file?"
    fileName <- getLine
    print "enter string to search for"
    strSearch <- getLine
    file <- readFile fileName
    print (isInfixOf [strSearch] [file])