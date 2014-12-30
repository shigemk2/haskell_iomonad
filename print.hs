{-# LANGUAGE UnboxedTuples #-}

import GHC.Base

main = IO $ \s ->
    let (# s1, r #) = unIO (print "hello") s
    in  (# s1, r #)
