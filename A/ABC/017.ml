let s1 = Scanf.sscanf (read_line()) "%d %d" (fun s e -> s / 10 * e)
let s2 = Scanf.sscanf (read_line()) "%d %d" (fun s e -> s / 10 * e)
let s3 = Scanf.sscanf (read_line()) "%d %d" (fun s e -> s / 10 * e)
let _ = Printf.printf "%d\n" (s1+s2+s3)