let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  if abs (a - b) >= 2 then print_endline ":(" else print_endline "Yay!"
)