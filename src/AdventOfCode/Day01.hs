module AdventOfCode.Day01
  ( day01, solutionOne
  ) where 

import System.IO
import Data.List
import Control.Monad

parseInput :: String -> Int
parseInput s = read s :: Int

fuelRequiredFor :: Int -> Int
fuelRequiredFor mass =
  (div mass 3) - 2 

solutionOne :: String -> Int
solutionOne input =
  foldl (+) 0 $ map (fuelRequiredFor . parseInput) (lines input)

day01 :: IO ()
day01 = do  
    problemInput <- readFile "input/day-01.txt"
    putStrLn $ "Part one: " ++ show (solutionOne problemInput)
