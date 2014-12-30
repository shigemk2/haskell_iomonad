{-# LANGUAGE UnboxedTuples #-}

import GHC.Base

main = do
    let a = IO $ \s -> (# s, 1 #)
    print =<< a
