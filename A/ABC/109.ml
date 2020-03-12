let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  if a * b mod 2 = 1 then print_endline "Yes"
  else print_endline "No"
)