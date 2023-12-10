module Lesson11 where

-- Maybe
-- data Maybe a = Just a | Nothing

safeHead :: [a] -> Maybe a
safeHead [] = Nothing
safeHead (x:_) = Just x

data Privilege = Admin | Unprivileged
  deriving (Show, Eq)

data Cookie = LoggedIn String Privilege | LoggedOut
  deriving (Show, Eq)

type Database = [(String, String, Privilege)]

db :: Database
db = [("dumbledore","abracadabra",Unprivileged), ("root", "secret", Admin), ("bela", "korte", Unprivileged)]

register :: String -> String -> Cookie -> Database -> Database
register _ _ (LoggedOut) db = db
register name pw (LoggedIn _ Admin) db = (name, pw, Unprivileged) : db
register _ _ _ db = db

getUser :: String -> Database -> Maybe (String, Privilege)
getUser _ [] = Nothing
getUser name ((n, pw, priv):xs)
  | name == n = Just (pw, priv)
  | otherwise = getUser name xs

login :: String -> String -> Database -> Cookie
login _ _ [] = LoggedOut
login name password ((n, pw, priv):xs)
  | name == n && password == pw = LoggedIn n priv
  | otherwise = login name password xs

passwd :: String -> Cookie -> Database -> Database
passwd _ LoggedOut db = db
passwd _ _ [] = []
passwd newpw c@(LoggedIn name _) (x@(n, pw, priv):xs)
  | name == n = (n, newpw, priv) : xs
  | otherwise = x : passwd newpw c xs

delete :: String -> Cookie -> Database -> Database
delete _ LoggedOut db = db
delete _ (LoggedIn _ Unprivileged) db = db
delete name (LoggedIn _ Admin) db = filter (\(n, pw, priv) -> n /= name) db

users :: Database -> [String]
users db = map (\(n, _, _) -> n) db