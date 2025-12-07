{- 
- Programming in Haskell
- Ch 1
- -}

-- double
double x = x + x
testDouble = double 3 == 6

-- sum
mysum [] = 0
mysum (n:ns) = n + mysum ns

testSum = mysum [1,2,3] == 6
testSum2 = mysum [2,5,8] == 15

-- qsort ... 
qsort [] = []
qsort (x:xs) = qsort smaller ++ [x] ++ qsort larger
                where
                  smaller = [a | a <- xs, a <= x]
                  larger = [b | b <- xs, b > x]

testQsort = qsort [3,1,5,2,6,4] == [1,2,3,4,5,6]

-- not sure if this one will work:
seqn [] = return []
seqn (act:acts) = do x <- act
                     xs <- seqn acts
                     return (x:xs)

testSqn = seqn[getChar,getChar]

-- exercise 3: product
myproduct [] = 1
myproduct (n:ns) = n * myproduct ns

testProduct = myproduct [2,3,4] == 24

-- exercise 4: make qsort return a reversed list
revqsort [] = []
revqsort (x:xs) = revqsort larger ++ [x] ++ revqsort smaller
                  where
                    larger = [a | a <- xs, a >= x]
                    smaller = [b | b <- xs, b < x]

testRevqsort = revqsort [3,1,5,2,6,4] == [6,5,4,3,2,1]

-- exercise 5: qsort with incorrect comparison
xqsort [] = []
xqsort (x:xs) = xqsort smaller ++ [x] ++ xqsort larger
                where
                  smaller = [a | a <- xs, a < x]
                  larger = [b | b <- xs, b > x]

testXqsort = xqsort [2,2,3,1,1] == [1,2,3] -- dups of x are skipped!
