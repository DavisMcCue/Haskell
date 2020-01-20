import Data.List

data Suit = Spade | Heart | Club | Diamond deriving (Show, Eq, Ord)

data Card = Card {value::Int, suit::Suit} deriving (Show, Eq, Ord)

data Hand = Hand {cards::[Card]} deriving (Show, Eq, Ord)

data Combination
  = Royal
  | StraightFlush
  | Four
  | FullHouse
  | Flush
  | Straight
  | Three
  | TwoPair
  | Pair
  | HighValue

instance Show Combination where
    show Royal         = "Royal flush"
    show StraightFlush = "Straight flush"
    show Four          = "Four of a kind"
    show FullHouse     = "Full house"
    show Flush         = "Flush"
    show Straight      = "Straight"
    show Three         = "Three of a kind"
    show TwoPair       = "Two pair"
    show Pair          = "One pair"

getComb :: Hand -> Combination
getComb h
          | threeOfAKind h     = Three
      --  | straight h
      --    && isFlush h  = if isRoyal h then Royal else StraightFlush
      --  | isFour h      = Four
      --  | isFullHouse h = FullHouse
      --  | isFlush h     = Flush
      --  | straight h  = Straight
      --  | isTwoPair h   = TwoPair
      --  | isPair h      = Pair


--Sorting Cards
getValue:: Card -> Int
getValue (Card value _) = value

hand2Cards:: Hand -> [Card]
hand2Cards (Hand cards) = cards

cards2Hand:: [Card] -> Hand
cards2Hand cards = Hand(cards)

getSuit:: Card -> Suit
getSuit (Card _ suit) = suit

sameSuit :: Card -> Card -> Bool
sameSuit = (==) `on` suit

sameValue :: Card -> Card -> Bool
sameValue = (==) `on` value

getBlankofaKind:: [Card] -> Int
getBlankofaKind x:xs [acc]
    | value x == 1   [acc] !! 1 =  [acc] !! 1 + 1
    | value x == 2   [acc] !! 2 =  [acc] !! 2 + 1
    | value x == 3   [acc] !! 3 =  [acc] !! 3 + 1
    | value x == 4   [acc] !! 4 =  [acc] !! 4 + 1
    | value x == 5   [acc] !! 5 =  [acc] !! 5 + 1
    | value x == 6   [acc] !! 6 =  [acc] !! 6 + 1
    | value x == 7   [acc] !! 7 =  [acc] !! 7 + 1
    | value x == 8   [acc] !! 8 =  [acc] !! 8 + 1
    | value x == 9   [acc] !! 9 =  [acc] !! 9 + 1
    | value x == 10  [acc] !! 10 = [acc] !! 10 + 1
    | value x == 11  [acc] !! 11 = [acc] !! 11 + 1
    | value x == 12  [acc] !! 12 = [acc] !! 12 + 1
    | value x == 13  [acc] !! 13 = [acc] !! 13 + 1
    return (maximum [acc])

sortHand:: Hand -> Hand
sortHand h = cards2Hand(sortCards(hand2Cards h))

sortCards:: (Ord a) => [a] -> [a]
sortCards [] = []
sortCards (x:xs) =
    let smallsorted = sortCards [a | a <- xs, a <= x]
        bigsorted = sortCards [a | a <- xs, a > x]
    in smallsorted ++ [x] ++ bigsorted


--sameSuit :: Card -> Card -> Bool
--sameSuit = (==) `on` suit

--sameValue :: Card -> Card -> Bool
--sameValue = (==) `on` value

--getBlankofaKind::
twoKind:: Hand -> Bool
twoKind h if getBlankofaKind(hand2Cards h) == 2 then True otherwise False

--Checking to see if its a pair or 3 or 4 of a kind

  threeOfAKind:: Hand -> Bool
  threeOfAKind h = case getPair h of
           Just ((c1,_),(c2,_),h') -> any (`elem` [c1,c2]) (map fst h')
           Nothing                 -> False

--straight:: Hand -> bool
threeKind:: Hand -> bool
threeKind h if getBlankofaKind(hand2Cards h) == 3 then True otherwise False

straight:: Hand -> bool
straight h if (value hand2Cards(h)) !! 2 == 1 + ((value hand2Cards(h)) !! 1)
           && (value hand2Cards(h)) !! 3 == 1 + ((value hand2Cards(h)) !! 2)
           && (value hand2Cards(h)) !! 4 == 1 + ((value hand2Cards(h)) !! 3)
           && (value hand2Cards(h)) !! 5 == 1 + ((value hand2Cards(h)) !! 4)

isFlush:: Hand -> bool
isFlush h
    |   (suit hand2Cards(h)) !! 1 == "Spade"
    &&  (suit hand2Cards(h)) !! 2 == "Spade"
    &&  (suit hand2Cards(h)) !! 3 == "Spade"
    &&  (suit hand2Cards(h)) !! 4 == "Spade"
    &&  (suit hand2Cards(h)) !! 5 == "Spade"
    |   (suit hand2Cards(h)) !! 1 == "Club"
    &&  (suit hand2Cards(h)) !! 2 == "Club"
    &&  (suit hand2Cards(h)) !! 3 == "Club"
    &&  (suit hand2Cards(h)) !! 4 == "Club"
    &&  (suit hand2Cards(h)) !! 5 == "Club"
    |   (suit hand2Cards(h)) !! 1 == "Diamond"
    &&  (suit hand2Cards(h)) !! 2 == "Diamond"
    &&  (suit hand2Cards(h)) !! 3 == "Diamond"
    &&  (suit hand2Cards(h)) !! 4 == "Diamond"
    &&  (suit hand2Cards(h)) !! 5 == "Diamond"
    |   (suit hand2Cards(h)) !! 1 == "Heart"
    &&  (suit hand2Cards(h)) !! 2 == "Heart"
    &&  (suit hand2Cards(h)) !! 3 == "Heart"
    &&  (suit hand2Cards(h)) !! 4 == "Heart"
    &&  (suit hand2Cards(h)) !! 5 == "Heart"


--fullHouse:: Hand -> bool

fourKind:: Hand -> bool
fourKind h if getBlankofaKind(hand2Cards h) == 4 then True otherwise False

main :: IO()
main = do
    print(card1)
    print(hand1)
    print(sortHand hand1)
    --print(twoPair hand1)
    --print(sortCards [Card 3 Heart, Card 4 Spade, Card 10 Diamond, Card 5 Heart, Card 1 Club])
    where
        card1 = Card 3 Heart
        hand1 = Hand ([Card 3 Heart, Card 4 Spade, Card 10 Diamond, Card 5 Heart, Card 5 Club])