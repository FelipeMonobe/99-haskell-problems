module Exercises.Lists3Spec
( main
, spec
) where

import Exercises.Lists3.Index
import Test.Hspec
import Test.QuickCheck

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "Exercise 21" $ do
    it "insertAt should return \"placeholder\"" $ do
      insertAt `shouldBe` ("placeholder" :: String)
