let st = Scanf.sscanf (read_line ()) "%s %s" (fun s t -> [s;t])
let ab = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> [a;b])
let u = read_line ()
let _ = 
  match u with
  | u when u = (List.hd st) -> Printf.printf "%d %d\n" ((List.hd ab) - 1) (List.nth ab 1)
  | _ -> Printf.printf "%d %d\n" (List.hd ab) ((List.nth ab 1) - 1)


