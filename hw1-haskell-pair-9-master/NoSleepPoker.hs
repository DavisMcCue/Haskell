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

--Checking to see if its a pair or 3 

--straight:: Hand -> bool

--isFlush:: Hand -> bool

--fullHouse:: Hand -> bool

--fourKind:: Hand -> bool

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