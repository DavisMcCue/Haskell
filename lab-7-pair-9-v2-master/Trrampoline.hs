module Trampoline (Trampoline (..), trampoline, thunk) where
    data Trampoline a = Continue (() -> Trampoline a)
                        | Done a

    instance (Show a) => Show (Trampoline a) where
        show (Done a) = "Done " ++ (show a)
        show (Continue _) = "Continue"

    trampoline :: Trampoline p -> p
    trampoline (Done a) = a
    trampoline (Continue k) = trampoline $ k ()
    
    thunk :: Trampoline p -> Trampoline p
    thunk (Done a) = Done a
    thunk (Continue k) = k ()