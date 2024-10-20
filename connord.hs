--Question 12
divisors n = [ x | x <- [1..n], mod n x == 0 ]

--Question 13
isPrime:: Int -> Bool
isPrime x = divisors x == [1,x]

--Question 14
primes = [ x | x <- [2..], isPrime x ]

--Question 15
-- primes !! 1999

--Question 16
perfs :: Int -> [Int]
perfs n = [x | x <- [1..n], sum([y | y <- [1..x-1], x `mod` y == 0]) == x]

main ::  IO()
main = do
   print (divisors 6)
   print (divisors 12)
   print (isPrime 6)
   print (isPrime 7)
    -- Question 15
   print (primes !! 1999)
   print (perfs 1000)