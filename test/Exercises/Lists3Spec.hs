module Exercises.Lists3Spec
( main
, spec
) where

import Exercises.Lists3.Index
import Data.List(isSubsequenceOf)
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Exercise 21" $ do
    it "insertAt 'X' \"abcd\" 2 should return \"aXbcd\"" $ do
      insertAt 'X' "abcd" 2 `shouldBe` ("aXbcd" :: String)
  describe "Exercise 22" $ do
    it "range 4 9 should return [4,5,6,7,8,9]" $ do
      range 4 9 `shouldBe` ([4,5,6,7,8,9] :: [Int])
  describe "Exercise 23" $ do
    it "rndSelect \"abcdefgh\" 3 should return a random string with length 3" $ do
      length <$> rndSelect "abcdefgh" 3 `shouldBe` (3 :: IO Int)
--    it "rndSelect \"abcdefgh\" 3 should return a random string with containing chars" $ do
--      rndSelect "abcdefgh" 3 `isSubsequenceOf` "abcdefgh" `shouldBe` ([True, True, True] :: [Bool])

