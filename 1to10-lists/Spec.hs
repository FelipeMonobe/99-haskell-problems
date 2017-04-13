import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import ExerciseIndex

main :: IO ()
main = hspec $ do
  describe "Exercise 1" $ do
    it "myLast [1,2,3,4] should return 4" $ do
      myLast [1,2,3,4] `shouldBe` (Just 4 :: Maybe Int)
    it "myLast ['x','y','z'] should return 'z'" $ do
      myLast ['x','y','z'] `shouldBe` (Just 'z' :: Maybe Char)

  describe "Exercise 2" $ do
    it "myButLast [1,2,3,4] should return 3" $ do
      myButLast [1,2,3,4] `shouldBe` (Just 3 :: Maybe Int)
    it "myButLast ['a'..'z'] should return 'y'" $ do
      myButLast ['a'..'z'] `shouldBe` (Just 'y' :: Maybe Char)

  describe "Exercise 3" $ do
    it "elementAt [1,2,3] 2 should return 2" $ do
      elementAt [1,2,3] 2 `shouldBe` (Just 2 :: Maybe Int)
    it "elementAt \"haskell\" 5 should return 'e'" $ do
      elementAt "haskell" 5 `shouldBe` (Just 'e' :: Maybe Char)

  describe "Exercise 4" $ do
    it "myLength [123,456,789] should return 3" $ do
      myLength [123,456,789] `shouldBe` (3 :: Int)
    it "myLength \"Hello, world!\" should return 13" $ do
      myLength "Hello, world!" `shouldBe` (13 :: Int)

  describe "Exercise 5" $ do
    it "myReverse \"A man, a plan, a canal, panama!\" should return \"!amanap ,lanac a ,nalp a ,nam A\"" $ do
      myReverse "A man, a plan, a canal, panama!" `shouldBe` ("!amanap ,lanac a ,nalp a ,nam A" :: String)
    it "myReverse [1,2,3,4] should return 'y'" $ do
      myReverse [1,2,3,4] `shouldBe` ([4,3,2,1] :: [Int])

  describe "Exercise 6" $ do
    it "isPalindrome [1,2,3] should return False" $ do
      isPalindrome [1,2,3] `shouldBe` (False :: Bool)
    it "isPalindrome \"madamimadam\" should return True" $ do
      isPalindrome "madamimadam" `shouldBe` (True :: Bool)
    it "isPalindrome [1,2,4,8,16,8,4,2,1] should return True" $ do
      isPalindrome [1,2,4,8,16,8,4,2,1] `shouldBe` (True :: Bool)

  describe "Exercise 7" $ do
    it "flatten (Elem 5) should return [5]" $ do
      flatten (Elem 5) `shouldBe` ([5] :: [Int])
    it "flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) should return [1,2,3,4,5]" $ do
      flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]]) `shouldBe` ([1,2,3,4,5] :: [Int])
    it "flatten (List []) should return []" $ do
      flatten (List []) `shouldBe` ([] :: String)

  describe "Exercise 8" $ do
    it "compress \"aaaabccaadeeee\" should return \"abcade\"" $ do
      compress "aaaabccaadeeee" `shouldBe` ("abcade" :: String)

  describe "Exercise 9" $ do
    it "pack ['a','a','a','a','b','c','c','a','a','d','e','e','e','e'] should return [\"aaaa\",\"b\",\"cc\",\"aa\",\"d\",\"eeee\"]" $ do
      pack ['a','a','a','a','b','c','c','a','a','d','e','e','e','e'] `shouldBe` (["aaaa","b","cc","aa","d","eeee"] :: [String])

  describe "Exercise 10" $ do
    it "encode \"aaaabccaadeeee\" should return [(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')]" $ do
      encode "aaaabccaadeeee" `shouldBe` ([(4,'a'),(1,'b'),(2,'c'),(2,'a'),(1,'d'),(4,'e')] :: [(Int, Char)])
