let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  if b >= a then Printf.printf "%d\n" a else Printf.printf "%d\n" (a-1)
)