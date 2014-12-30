{-# LANGUAGE UnboxedTuples #-}

import GHC.Base

main = IO $ \s -> (# s, () #)
