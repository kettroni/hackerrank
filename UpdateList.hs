updateList :: [Int] -> [Int]
updateList [] = []
updateList (x:xs) = [abs x] ++ updateList xs

main :: IO ()
main = interact $ unlines . map show . updateList . map read . words
