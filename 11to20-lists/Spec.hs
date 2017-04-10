import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import ExerciseIndex

main :: IO ()
main = hspec $ do
  describe "Exercise n" $ do
    it "function argument should return result" $ do
      function argument `shouldBe` (result :: Type)
