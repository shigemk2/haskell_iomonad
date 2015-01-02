{-# LANGUAGE UnboxedTuples #-}

import GHC.Base

test1 = do
    a <- return 1
    print a

test2 =
    return 2 >>= \a ->
    print a

test3 = IO $ \s ->
    let (# s1, a #) = unIO (return 3) s
        (# s2, r #) = unIO (print  a) s1
    in  (# s2, r #)

main = test1 >> test2 >> test3
