module Expression 
  (
    Expression(Number, Add, Subtract),
    calculate
  ) where

import Test.QuickCheck
import Control.Monad

data Expression = Number Int
                | Add Expression Expression
                | Subtract Expression Expression
                deriving (Eq, Ord, Show)

calculate :: Expression -> Int
calculate (Number x) = x
calculate (Add x y) = (calculate x) + (calculate y)
calculate (Subtract x y) = (calculate x) - (calculate y)

instance Arbitrary Expression where
  arbitrary = sized exp
    where 
      exp 0 = liftM Number arbitrary
      exp n | n>0 =
        oneof [ liftM Number arbitrary
              , liftM2 Add subexp subexp
              , liftM2 Subtract subexp subexp
              ]
              where subexp = exp (n `div` 2)

