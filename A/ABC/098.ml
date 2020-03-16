let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  print_int @@ max (a * b) @@ max (a + b) (a - b)
)
