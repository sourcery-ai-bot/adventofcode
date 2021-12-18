strToIntList :: String -> [Int]
strToIntList string = map (read :: String -> Int) (lines string)

hasIncreased :: [Int] -> [Bool]
hasIncreased lst = zipWith (<) lst (tail lst)

numTrue :: [Bool] -> Int
numTrue lst = length (filter (== True) lst)

main = do
  input <- getContents
  print . numTrue . hasIncreased $ strToIntList input