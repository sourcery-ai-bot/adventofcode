-- import Data.List
{-# LANGUAGE ViewPatterns #-}

import Data.List (stripPrefix)

parseInst :: String -> (Int, Int)
parseInst (stripPrefix "forward" -> Just x) = (read x, 0)
parseInst (stripPrefix "down" -> Just x) = (0, read x)
parseInst (stripPrefix "up" -> Just x) = (0, negate $ read x)
parseInst x = (0, 0)

sumTuples :: (Num a, Num b) => (a, b) -> (a, b) -> (a, b)
sumTuples (a1, b1) (a2, b2) = (a1 + a2, b1 + b2)

calcResult :: Num a => (a, a) -> a
calcResult (a, b) = a * b

main = do
  input <- getContents
  let movements = map parseInst . lines $ input
  let final_coords = foldl sumTuples (0, 0) movements
  print . calcResult $ final_coords