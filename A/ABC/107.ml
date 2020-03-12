let _ = Scanf.sscanf (read_line ()) "%d %d" (fun n i ->
  print_endline @@ string_of_int (n - i + 1)
)