let a, b = Scanf.sscanf (read_line()) "%d %d" (fun a b -> a,b)
let _ = Printf.printf "%d\n" @@ a * b