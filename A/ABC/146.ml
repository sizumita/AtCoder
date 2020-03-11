let p = 
  match (read_line ()) with
  | "SUN" -> 7
  | "MON" -> 6
  | "TUE" -> 5
  | "WED" -> 4
  | "THU" -> 3
  | "FRI" -> 2
  | _ -> 1

let _ = Printf.printf "%d\n" p
