sumOfOddElements :: [Int] -> Int
sumOfOddElements [] = 0
sumOfOddElements (x:xs)
  | odd x = x + sumOfOddElements xs
  | otherwise = sumOfOddElements xs
  
main :: IO ()
main = interact $ show . sumOfOddElements . map read . words
