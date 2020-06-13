let _ = Scanf.sscanf (read_line()) "%d %d" (fun a b ->
   let rec loop i ans =
    if ans >= b then i else
    loop (i+1) (ans - 1 + a)
  in loop 0 1
) |> Printf.printf "%d\n"