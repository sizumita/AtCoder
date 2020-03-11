let h = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> a)

let rec ans n =
  match n with
   0 -> ""
  | _ -> let a = read_line() in a ^ "\n" ^ a ^ "\n" ^ ans (n-1)

let _ = print_endline (ans h)