let _ = Scanf.sscanf (read_line ()) "%d %d %d" (fun a b t ->
  let rec generate s =
    match s with
    | s when (s * a) > t -> 0
    | _ -> b + generate (s+1)
  in print_endline (string_of_int (generate 1))
)
