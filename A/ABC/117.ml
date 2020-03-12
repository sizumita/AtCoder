let _ = Scanf.sscanf (read_line ()) "%d %d" (fun t x ->
  print_float ((float_of_int t) /. (float_of_int x))
)