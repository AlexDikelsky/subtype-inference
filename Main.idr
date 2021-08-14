module Main

import Datatypes
import Parser
import Text.Parser.Core
import Text.Parser
import Text.Lexer
import Data.List
import Data.Either

main : IO ()
main = do
  putStrLn $ show $ runLexer "   "
  putStrLn $ show $ runLexer "34()"
  putStrLn $ show $ runLexer "3 4 ()"
  putStrLn $ show $ runLexer "b a ()"
  putStrLn $ show $ runLexer "ba ()"
  putStrLn $ show $ runLexer "ba'''' ()"
  putStrLn $ show $ runLexer "ba'--''' ()"
