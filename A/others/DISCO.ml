let g p =
  match p with
  | 1 -> 300000
  | 2 -> 200000
  | 3 -> 100000
  | _ -> 0
let money = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match (g a) + (g b) with
  | 600000 -> print_endline "1000000"
  | x -> Printf.printf "%d\n" x
)