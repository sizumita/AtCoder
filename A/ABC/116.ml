let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun ab bc ca ->
  print_endline (string_of_int (ab * bc / 2))
)