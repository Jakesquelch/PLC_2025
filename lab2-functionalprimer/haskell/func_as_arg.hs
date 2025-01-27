-- Define inpFunc
inpFunc :: Int -> Int -> [Int] -- Optional type signature for clarity
inpFunc start end = [start..end]

-- Define applicatorFunc
applicatorFunc :: [Int] -> Char -> Double -- Optional type signature for clarity
applicatorFunc inpFunc s
  | s == 's'  = fromIntegral (sum inpFunc)
  | otherwise = fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)

main :: IO ()
main = do
    putStrLn "Enter the start of the range:"
    start <- readLn :: IO Int
    putStrLn "Enter the end of the range:"
    end <- readLn :: IO Int

    case () of
      _ | start <= 0 || end < start -> 
            putStrLn "Please enter valid positive integers with start <= end."
        | otherwise -> do
            let result = applicatorFunc (inpFunc start end) 'a' -- Call applicatorFunc with inpFunc and 'a'
            putStrLn ("Result = " ++ show result)
