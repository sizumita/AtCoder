let a,b,n = Scanf.sscanf (read_line()) "%f %f %f" (fun a b n ->a,b,n
)

let x = (if b > n then n else b -. 1.)
let _ = Printf.printf "%d\n" ((int_of_float (a *. x /. b)) - (int_of_float a) * (int_of_float @@ x /. b))
