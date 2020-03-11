let m1 = Scanf.sscanf (read_line()) "%d %d" (fun a b -> a)
let m2 = Scanf.sscanf (read_line()) "%d %d" (fun a b -> a)
let _ = if m1 != m2 then print_endline "1" else print_endline "0"