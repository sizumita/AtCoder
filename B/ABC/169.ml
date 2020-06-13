let a,b = Scanf.sscanf (read_line()) "%d %f" (fun a b -> a,b)

let b2 = int_of_float @@ (b *. 100.)
let r = ((a * b2 |> float_of_int) /. 100.) |> int_of_float
let _ = Printf.printf "%d\n" r

