let a = read_int ()
let b = read_int ()
let _ = (if a mod b = 0 then 0 else b - (a mod b)) |> Printf.printf "%d\n"