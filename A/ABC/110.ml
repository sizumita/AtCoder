let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b c ->
  Printf.printf "%d\n" (max (a * 10 + b + c) @@ max (a + b * 10 + c) (a + b + c * 10))
)
