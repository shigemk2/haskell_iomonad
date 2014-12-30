main = do
    let hello = putStr "hello"
    -- let hello = return "hello"
    print =<< hello
    print =<< hello
