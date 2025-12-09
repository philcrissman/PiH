-- double
double x = x + x

quadruple x = double (double x)

factorial n = product [1..n]

average ns = sum ns `div` length ns

-- exercises

-- 2
-- We are asked to add parens to some mathematical expressions
-- Testing as an equality, ie, if I'm incorrect, the function will
-- return False
testParens1 = 2^3*4 == (2^3)*4
testParens2 = 2*3+4*5 == (2*3)+(4*5)
testParens3 = 2+3*4^5 == 2+(3*(4^5))

-- 3
-- Identify and fix syntactic errors in a small function provided
-- Errors were:
--  - A capital 'N' was used to name the funtion, not allowed
--  - incorrect quote-type around `div`
--  - the a and xs under `where` were not aligned
n = a `div` length xs
      where
        a = 10
        xs = [1,2,3,4,5]

-- 4
-- Reimplement the `last` function for an array
-- last [1,2,3,4] -> 4
mylast ns = ns !! (length ns - 1)

testMylast = last [1,2,3] == mylast [1,2,3]

-- 5
-- Reimplement `init` (removes last element from non-empty array)
-- Try to do it 2 different ways.
myinit1 ns = take (length ns - 1) ns
myinit2 ns = reverse (drop 1 (reverse ns))

testInit1 = myinit1 [1,2,3,4] == init [1,2,3,4]
testInit2 = myinit2 [1,2,3,4] == init [1,2,3,4]


