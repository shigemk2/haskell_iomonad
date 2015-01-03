{-# LANGUAGE UnboxedTuples #-}
import GHC.Base

return' a = IO $ \s -> (# s, a #)
a `bind` b = IO $ \s ->
    let (# s1, r1 #) = unIO a s
        (# s2, r2 #) = unIO (b r1) s1
    in  (# s2, r2 #)

main = return' "hello" `bind` putStr `bind` print
