module Intro1 where

-- define named constants:
r1 = 1
r2 = b^2 + 1/b where b = 2.0 -- Added a decimal to make it a float

-- define a function:
diff a b = abs (a - b)

r3 = diff (diff a a) a  where a = 1
r4 = diff (diff a b) b  where
    a = 1 -- removed semi-coloned line and separated line for readability
    b = 1

-- lists by enumeration
r5 = [1,3,4,1]
r6 = [1..5]

inc n = n + 1

r7 = map inc [1..3]
r8 = map (diff 2) [1..3]
r9 = map sqrt [1..3]

r10 = zip [1..3] (map sqrt [1..3])
r11 = zip [1..3] (map sqrt [1..2])

r12 = print [1..3]

r13 = map (*2) [1,2,3]
-- Added a new map

main :: IO ()
main = pure ()