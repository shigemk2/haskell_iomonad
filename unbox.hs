{-# LANGUAGE UnboxedTuples #-}

addsub x y = (# x + y, x - y #)

main = do
    let (# a, b #) = addsub 1 2
    print (a, b)
