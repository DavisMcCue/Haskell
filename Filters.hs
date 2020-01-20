listofints :: [Int] -> [Int]
listofints = filter (\x -> x `mod` 3 == 0)

main:: IO ()
main = do
    print("Lab 4 - Part 3")
    print (filter (< 6) a)
    print (filter (> 8) a) 
    print (listofints a ) 
    print (filter (>= 4) a)
        where a = [1..10]
