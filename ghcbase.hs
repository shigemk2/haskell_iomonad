import GHC.Base

main = do
    let m  = return 1
    print =<< m

    let f  = unIO m
    let m1 = IO f
    print =<< m1

    v <- m
    let m2 = return v
    print =<< m2
