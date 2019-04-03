module Main where

import Win2Unix
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    case args of
        [inputFile, outputFile] -> mapFileContents replaceLineEnding inputFile outputFile
        _ -> putStrLn "win2Unix (CRLF File) (Output File Name)"

