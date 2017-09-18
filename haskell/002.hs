--
-- Project Euler: Challenge 002 - http://projecteuler.net/problem=2
--
-- Each new term in the Fibonacci sequence is generated by adding the previous two terms.
-- By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
-- By considering the terms in the Fibonacci sequence whose values do not exceed four million,
-- find the sum of the even-valued terms.
--
-- Answer: 4613732
--

fibonacci (n) = if (n == 1) || (n == 2) then 1 else fibonacci(n - 1) + fibonacci(n - 2)

main = do print(sum(takeWhile(< 4000000) [fx | x <- [1..35], let fx = (fibonacci x), even fx]))
