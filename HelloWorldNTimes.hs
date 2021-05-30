helloWorldNTimes :: Int -> String
helloWorldNTimes 0 = ""
helloWorldNTimes n = "Hello World\n" ++ helloWorldNTimes (n-1)

main :: IO ()
main = interact $ helloWorldNTimes . read

