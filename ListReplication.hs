helper :: Int -> Int -> [Int]
helper 0 x = []
helper n x = [x] ++ helper (n-1) x

listReplication :: Int -> [Int] -> [Int]
listReplication n [] = []
listReplication n (x:xs) = helper n x ++ listReplication n xs
-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> listReplication n arr). map read. words
