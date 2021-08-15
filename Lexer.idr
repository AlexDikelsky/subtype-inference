module Lexer
import Text.Lexer
import Datatypes


exprTokens : TokenMap ExpressionToken
exprTokens =
  [(is '(', \x => LParen),
   (is ')', \x => RParen),
   (some space, \x => Whitespace),
   (some (alphaNums <|> (oneOf "-'")), \x => Word x)
   ]

export 
runLexer : String -> List (TokenData ExpressionToken)
runLexer s = fst $ lex exprTokens s
