let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun l1 l2 l3 ->
  match l1 with
  | l1 when l1 = l2 -> l3
  | l1 when l1 = l3 -> l2
  | _ -> l1
) |> Printf.printf "%d\n"