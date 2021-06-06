helper :: [Int] -> [Int]
helper (x:xs) = filterArray x xs

filterArray :: Int -> [Int] -> [Int]
filterArray n [] = []
filterArray n (x:xs) = if x < n
                     then [x]++(filterArray n xs)
                     else []++(filterArray n xs)

main :: IO()
main = interact $ unlines . map show . helper . map read . words 


