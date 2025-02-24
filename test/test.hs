module Main where

import System.IO (hSetBuffering, stdout, BufferMode(..))

main = 
    do
        initialiseIO
        putStrLn ("Singer names = " ++ show allSingers)
        singer <- getElement "singer"
        putStrLn (show singer ++ " from: " ++ show (singer2Band singer))

initialiseIO =
    hSetBuffering stdout NoBuffering

-- Define the data types
data Singer = FreddieMercury | Bono | KurtCobain | JamesHetfield
    deriving (Show, Read, Eq, Bounded, Enum)

data Band = Queen | U2 | Nirvana | Metallica
    deriving (Show, Read, Eq, Bounded, Enum)

-- List of all singers
allSingers :: [Singer]
allSingers = [minBound .. maxBound]

-- Function to map singers to their bands
singer2Band :: Singer -> Band
singer2Band FreddieMercury = Queen
singer2Band Bono = U2
singer2Band KurtCobain = Nirvana
singer2Band JamesHetfield = Metallica

-- Function to get user input and parse it into a Singer
getElement :: String -> IO Singer
getElement prompt = do
    putStrLn ("Enter " ++ prompt ++ " name:")
    input <- getLine
    case reads input of
        [(singer, "")] -> return singer
        _ -> do
            putStrLn "Invalid input. Try again."
            getElement prompt
