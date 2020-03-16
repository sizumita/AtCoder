let n = read_int ()
let k = read_int ()
let x = read_int ()
let y = read_int ()
let _ = (if n > k then k * x + (n-k) * y else n * x) |> Printf.printf "%d\n"