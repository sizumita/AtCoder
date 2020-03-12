let n = read_int ()
let _ = (if n mod 2 = 0 then n else n * 2) |> Printf.printf "%d\n"