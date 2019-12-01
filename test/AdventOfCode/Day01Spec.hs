module AdventOfCode.Day01Spec (main, spec) where

import Test.Hspec

import AdventOfCode.Day01 (day01, solutionOne, solutionTwo)

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "solutionOne" $ do
    it "should return expected responses for example data" $ do
      solutionOne "12" `shouldBe` 2
      solutionOne "14" `shouldBe` 2
      solutionOne "1969" `shouldBe` 654
      solutionOne "100756" `shouldBe` 33583
  describe "solutionTwo" $ do
    it "should return expected responses for example data" $ do
      solutionTwo "12" `shouldBe` 2
      solutionTwo "1969" `shouldBe` 966
      solutionTwo "100756" `shouldBe` 50346
