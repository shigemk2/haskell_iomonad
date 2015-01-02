-- main = return' "hello" `bind` putStr `bind` print
main = return "hello" >>= putStr >>= print
