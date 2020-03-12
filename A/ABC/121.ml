let _ = Scanf.sscanf (read_line ()) "%d %d" (fun h w ->
    Scanf.sscanf (read_line ()) "%d %d" (fun h_ w_ ->
      print_endline (string_of_int ((h - h_) * (w - w_)))
    )
)