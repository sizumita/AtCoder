let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a1 a2 a3 ->
  print_endline @@ string_of_int ((max a1 @@ max a2 a3) - (min a1 @@ min a2 a3) )
)