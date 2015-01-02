main = do
    let loop i | i <= 3 = do
            print i
            loop $ i + 1
        loop _ = return ()
    loop 1
