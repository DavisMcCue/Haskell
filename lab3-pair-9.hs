data Employee = Executive {name::String, age::Int, salary::Float}
    | Manager {name::String, age::Int, salary::Float}
    | Engineer {name::String, age::Int, salary::Float}
    deriving (Show, Eq)

isManager :: Employee -> Bool
isManager (Executive _ _ _) = False
isManager (Manager _ _ _)   = True
isManager (Engineer _ _ _)  = False

promote :: Employee -> Employee
promote (Engineer _ _ _)  = (Manager "Jeff" 10 12.1)
promote (Manager _ _ _)   = (Executive "Jeff" 10 12.1)
promote (Executive _ _ _) = (Executive "Jeff" 10 12.1) 

main:: IO () 
main = do 
       print (False == isManager (Engineer "Jeff" 10 12.1))
       print (False == isManager (Executive "Jeff" 10 12.1))
       print (True  == isManager (Manager "Jeff" 10 12.1))
