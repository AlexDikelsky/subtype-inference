module Datatypes

import Generics.Derive
%language ElabReflection

VarDefinition : Type
VarDefinition = (String, String)

CaseMatchPattern : Type
CaseMatchPattern = (String, String)

data Lit =
  Boolean Bool

data Expr =
  Call Expr Expr
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

%runElab derive "ExpressionToken" [Generic, Eq]

export
Show ExpressionToken where
  show (Word s) = s
  show LParen = "("
  show RParen = ")"
  show Whitespace = "Whitespace"
