import GHC.Base

main = do
    -- 値をIOモナドに格納する
    let m  = return 1
    -- IOモナドから値を関数に渡す
    print =<< m

    -- IOモナドから関数を取り出す
    let f  = unIO m
    -- 関数をIOモナドに格納する
    let m1 = IO f
    -- IOモナドから値を関数に渡す
    print =<< m1

    -- IOモナドから値を取り出す
    v <- m
    -- 値をIOモナドに格納する
    let m2 = return v
    -- IOモナドから値を関数に渡す
    print =<< m2
