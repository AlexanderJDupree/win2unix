module Win2Unix
    ( mapFileContents,
      replaceLineEnding
    ) where

mapFileContents function inputFile outputFile = do
    input <- readFile inputFile
    writeFile outputFile (function input)

replaceLineEnding :: String -> String
replaceLineEnding file = unlines (removeLineEndings file)

removeLineEndings :: String -> [String]
removeLineEndings [] = []
removeLineEndings contents = 
    let (prefix, suffix) = break isLineTerminator contents
    in prefix : case suffix of
        ('\r':'\n':rest) -> removeLineEndings rest
        ('\r':rest)      -> removeLineEndings rest
        ('\n':rest)      -> removeLineEndings rest
        _                -> []

isLineTerminator c = c == '\r' || c == '\n'

