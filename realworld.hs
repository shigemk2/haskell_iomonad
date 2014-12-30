{-# LANGUAGE UnboxedTuples, MagicHash #-}

import GHC.Base

main' :: State# RealWorld -> (# State# RealWorld, () #)
main' s =
    let (# s1, _ #) = unIO (print "hello") s
        (# s2, _ #) = unIO (print "world") s1
        (# s3, r #) = unIO (print "!!") s2
    in  (# s3, r #)

main :: IO ()
main =  IO main'
