let n = read_int ()
let _ = (if n mod 2 = 1 then n / 2 + 1 else n / 2) |> Printf.printf "%d\n"