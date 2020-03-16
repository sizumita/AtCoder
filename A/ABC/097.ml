let _ = Scanf.sscanf (read_line ()) "%d %d %d %d" (fun a b c d ->
  if abs (a - b) <= d && abs (b - c) <= d then print_endline "Yes" else if abs (a - c) <= d then print_endline "Yes" else print_endline "No"
)