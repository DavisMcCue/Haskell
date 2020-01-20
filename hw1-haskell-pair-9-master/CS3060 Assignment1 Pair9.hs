data Card = Card {suit::String, value::Int}

data Hand = Hand [Card]

sortHand:: Hand -> Hand
sortHand (x:y:xs)
    | y > x = sortHand (y:xs)
    | otherwise = sortHand (x:xs)

beats:: Hand -> Hand-> Hand

twoKind:: Hand -> bool

twoPair:: Hand -> bool

threeKind:: Hand -> bool

straight:: Hand -> bool

isFlush:: Hand -> bool

fullHouse:: Hand -> bool

fourKind:: Hand -> bool

straightFlush:: Hand -> bool

