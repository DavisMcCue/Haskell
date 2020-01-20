summ :: [Int] -> Int
summ l = foldl (+) 0 l

lengths :: [String] -> [Int]
lengths = map length 

mins :: [Int] -> Int
mins = foldl (\x y->if x<y then x else y) (maxBound::Int)

maxs :: [Int] -> Int
maxs = foldl1 (\x y ->if x >= y then x else y)

main :: IO ()
main = do
    print("Lab 4 - Part 4")
    print a
    print b  
    print(summ a) 
    print(foldl (+) 0 a)
    print ((summ a) == (sum a))

    print(lengths b)
    print(mins a)
    print (maxs a)
        where a = [1..10]
              b = ["a", "ab", "abc"]

