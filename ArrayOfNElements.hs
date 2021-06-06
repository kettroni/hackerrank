arrayOfNElements :: Int -> [Int]
arrayOfNElements 0 = []
arrayOfNElements n = [n] ++ arrayOfNElements (n-1)

main :: IO ()
main = interact $ show . arrayOfNElements . read
