{-# LANGUAGE UnboxedTuples #-}
import GHC.Base
import System.Random

dice = getStdRandom $ randomR (1, 6) :: IO Int

main = IO $ \s ->
    let (# s1, d #) = unIO (dice) s
        (# s2, r #) = unIO (print d) s1
    in  (# s2, r #)
