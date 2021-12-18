import Data.List (tails)

strToIntList :: String -> [Int]
strToIntList string = map (read :: String -> Int) (lines string)

hasIncreased :: [Int] -> [Bool]
hasIncreased lst = zipWith (<) lst (tail lst)

numTrue :: [Bool] -> Int
numTrue lst = length (filter (== True) lst)

movingSum k lst = map sumup $ tails lst
  where
    sumup = sum . take k

main = do
  input <- getContents
  print . numTrue . hasIncreased . movingSum 3 $ strToIntList input