helper :: [Int] -> [Int]
helper xs = removeOddsPosition True xs

removeOddsPosition :: Bool -> [Int] -> [Int]
removeOddsPosition _ [] = []
removeOddsPosition True (x:xs) = removeOddsPosition False xs
removeOddsPosition False (x:xs) = [x] ++ (removeOddsPosition True xs)

main :: IO()
main = interact $ unlines . map show .  helper . map read . words
