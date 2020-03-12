let _ = Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
  match a with
  | a when b mod a = 0 -> print_int (a + b)
  | _ -> print_int (b - a)
)