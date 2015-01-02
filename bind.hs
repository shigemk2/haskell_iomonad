test1 = ((return "1" >>= putStr) >>= print)
test2 = return "2" >>= putStr >>= print

main = test1 >> test2
