let k = read_int ()
let v = (if k mod 2 = 1 then (k / 2) * (k / 2 + 1) else (k / 2) * (k / 2)) |> Printf.printf "%d\n"