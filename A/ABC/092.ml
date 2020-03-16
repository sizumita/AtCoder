let a = read_int ()
let b = read_int ()
let c = read_int ()
let d = read_int ()
let train = if a > b then b else a
let bus = if c > d then d else c
let _ = Printf.printf "%d\n" (train + bus)