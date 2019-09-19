data Employee = Executive 
    | Manager 
    | Engineer 
    deriving (Show, Eq)

isManager :: Employee -> Bool
isManager (Executive) = False
isManager (Manager) = True
isManager (Engineer) = False

promote :: Employee -> Employee
promote (Engineer) = Manager
promote (Manager) = Executive
promote (Executive) = Executive 

main:: IO () 
main = do 
       print (False == isManager Engineer)
       print (False == isManager Executive)
       print (True == isManager Manager)
