-- import Data.List
{-# LANGUAGE ViewPatterns #-}

import Data.List (stripPrefix)

parseInst :: String -> (Int, Int)
parseInst (stripPrefix "forward" -> Just x) = (read x, 0)
parseInst (stripPrefix "down" -> Just x) = (0, read x)
parseInst (stripPrefix "up" -> Just x) = (0, negate $ read x)
parseInst x = (0, 0)

accumulator (horizontal, aim, depth) inst =
  (\(h, a) -> (horizontal + h, aim + a, depth + (h * (aim + a))))
    (parseInst inst)

calcResult :: Num a => (a, a, a) -> a
calcResult (horizontal, aim, depth) = horizontal * depth

main = do
  input <- getContents
  let final_coords = foldl accumulator (0, 0, 0) . lines $ input
  print . calcResult $ final_coords