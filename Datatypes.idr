module Datatypes

import Data.Vect

VarDefinition : Type
VarDefinition = (String, String)

CaseMatchPattern : Type
CaseMatchPattern = (String, String)

public export
data Lit =
  Boolean Bool

public export
data Expr =
  Call Expr
| Case String Expr
| FieldAccess Expr String
| FuncDef String Expr
| If Expr Expr Expr
| Let VarDefinition Expr
| Literal Lit
| Match Expr (List (CaseMatchPattern, Expr))
| Record (Vect n (String, Expr))
| Variable String



public export
data ExpressionToken = 
    Word String
  | LParen
  | RParen
  | Whitespace

-- export
-- Eq ExpressionToken where
--   (Word s) == (Word s) = s == s
--   LParen == LParen

export
Show ExpressionToken where
  show (Word s) = s
  show LParen = "("
  show RParen = ")"
  show Whitespace = "Whitespace"
