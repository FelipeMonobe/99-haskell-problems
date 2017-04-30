import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)

import ExerciseIndex

main :: IO ()
main = hspec $ do
  describe "Exercise 11" $ do
    it "encodeModified \"aaaabccaadeeee\" should return [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e']" $ do
      encodeModified "aaaabccaadeeee" `shouldBe` ([Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] :: [ListItem Char])
  describe "Exercise 12" $ do
    it "decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] should return \"aaaabccaadeeee\"" $ do
      decodeModified [Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] `shouldBe` ("aaaabccaadeeee" :: String) 
  describe "Exercise 13" $ do
    it "encodeDirect \"aaaabccaadeeee\" should return [Multiple 4 'a',Single 'b',Multiple 2 'c', Multiple 2 'a',Single 'd',Multiple 4 'e']" $ do
      encodeDirect "aaaabccaadeeee" `shouldBe` ([Multiple 4 'a', Single 'b', Multiple 2 'c', Multiple 2 'a', Single 'd', Multiple 4 'e'] :: [ListItem Char]) 
  describe "Exercise 14" $ do
    it "dupli [1, 2, 3] should return [1,1,2,2,3,3]" $ do
      dupli [1, 2, 3] `shouldBe` ([1, 1, 2, 2, 3, 3] :: [Int]) 
  describe "Exercise 15" $ do
    it "repli \"abc\" should return \"aaabbbccc\"" $ do
      repli "abc" 3 `shouldBe` ("aaabbbccc" :: String)
  describe "Exercise 16" $ do
    it "dropEvery \"abcdefghik\" 3 should return \"abdeghk\"" $ do
      dropEvery "abcdefghik" 3 `shouldBe` ("abdeghk" :: String)
  describe "Exercise 17" $ do
    it "split \"abcdefghik\" 3 should return (\"abc\", \"defghik\")" $ do
      split "abcdefghik" 3 `shouldBe` (("abc", "defghik") :: (String, String))
  describe "Exercise 18" $ do
    it "slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 should return \"cdefg\"" $ do
      slice ['a','b','c','d','e','f','g','h','i','k'] 3 7 `shouldBe` ("cdefg" :: String)
  describe "Exercise 19" $ do
    it "rotate ['a','b','c','d','e','f','g','h'] 3 should return \"defghabc\"" $ do
      rotate ['a','b','c','d','e','f','g','h'] 3 `shouldBe` ("defghabc" :: String)
    it "rotate ['a','b','c','d','e','f','g','h'] (-2) should return \"ghabcdef\"" $ do
      rotate ['a','b','c','d','e','f','g','h'] (-2) `shouldBe` ("ghabcdef" :: String)
  describe "Exercise 20" $ do
    it "removeAt 2 \"abcd\" should return ('b',\"acd\")" $ do
      removeAt 2 "abcd" `shouldBe` (('b', "acd") :: (Char, String))
