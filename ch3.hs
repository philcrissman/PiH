-- Chapter 3: Types and Classes

add' :: Int -> (Int -> Int)
add' x y = x+y

mult3 x y z =  x * y * z

-- There's not lot in this chapter to type out; here's the exercises!

-- ex 2.
--
-- a function with type bools :: [Bool]

bools :: [Bool]
bools = [True]

-- a function with type nums :: [[Int]]
nums :: [[Int]]
nums = [[1],[1,2],[1,2,3]]

-- a function with type add :: Int -> Int -> Int -> Int
add :: Int -> Int -> Int -> Int
add a b c = a + b + c

-- a function with type copy :: a -> (a,a)
copy :: a -> (a,a)
copy x = (x,x)

-- function with type apply :: (a -> b) -> a -> b
apply :: (a -> b) -> a -> b
apply x y = x y
-- eg: `apply negate 4 -> (-4)`


-- ex 3: Types of the following functions:

second :: [n] -> n
second xs = head (tail xs)

swap :: (a,b) -> (b,a)
swap (x,y) = (y,x)
