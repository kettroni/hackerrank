import Numeric
fac :: Double -> Double
fac 0 = 1
fac 1 = 1
fac n = n * fac (n-1)

evalEx :: Double -> Double -> Double
evalEx 0 _ = 1
evalEx n x = (x**n / (fac n)) + evalEx (n-1) x

eval10terms :: Double -> String
eval10terms x = showFFloat (Just 4) (evalEx 9 x) ""

evalAll :: [String] -> [String]
evalAll (x:xs) = map eval10terms (map read xs)

main :: IO ()
main = interact $ unlines . evalAll . words
