-- Define inpFunc
inpFunc :: Int -> Int -> [Int] --Dont need this just good to have
inpFunc start end = [start..end] 

-- Define applicatorFunc
applicatorFunc :: [Int] -> Char -> Double --Dont need this just good to have
applicatorFunc inpFunc s = 
  if s == 's' 
    then fromIntegral (sum inpFunc) 
    else fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)

main :: IO ()
main = do
    putStrLn "Enter the start of the range:"
    start <- readLn :: IO Int
    putStrLn "Enter the end of the range:"
    end <- readLn :: IO Int

    if start > 0 && end >= start 
      then do
        let result = applicatorFunc (inpFunc start end) 'a' -- Call applicatorFunc with inpFunc and 'a'
        putStrLn ("Result = " ++ show result)
      else
        putStrLn "Please enter valid positive integers with start <= end."
