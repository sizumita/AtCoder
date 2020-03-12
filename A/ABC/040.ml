let _ = Scanf.sscanf (read_line ()) "%d %d" (fun n x ->
  if (float_of_int n) /. 2. >= (float_of_int x) then x-1 else n - x
) |> Printf.printf "%d\n"
