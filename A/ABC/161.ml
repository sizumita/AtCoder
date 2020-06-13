let x, y, z = Scanf.sscanf (read_line()) "%d %d %d" (fun x_ y_ z_ ->
  x_, y_, z_
)
let _ = Printf.printf "%d %d %d\n" z x y