module Main where

import Test.HUnit
import FizzBuzz

-- | 'fizzBuzz' devuelve "Fizz" si el número es divisible por 3,
--   "Buzz" si es divisible por 5, "FizzBuzz" si es divisible por ambos,
--   o el número como una cadena en caso contrario.
testFizzBuzz :: Test
testFizzBuzz = TestList [
    TestCase $ assertEqual "fizzBuzz 1" "1" (fizzBuzz 1),
    TestCase $ assertEqual "fizzBuzz 2" "2" (fizzBuzz 2),
    TestCase $ assertEqual "fizzBuzz 3" "Fizz" (fizzBuzz 3),
    TestCase $ assertEqual "fizzBuzz 5" "Buzz" (fizzBuzz 5),
    TestCase $ assertEqual "fizzBuzz 15" "FizzBuzz" (fizzBuzz 15)
  ]

main :: IO Counts
main = runTestTT testFizzBuzz
