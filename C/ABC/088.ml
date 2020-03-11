let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  let rec p n =
    match n with
    | n when n > b -> 0
    | _ -> 1 + p (n*2)
  in print_endline (string_of_int (p a))
)
