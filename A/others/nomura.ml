let h1,m1,h2,m2,k = Scanf.sscanf (read_line()) "%d %d %d %d %d" (fun h1 m1 h2 m2 k -> h1,m1,h2,m2,k)

let _ = Printf.printf "%d\n" @@ ((60 * h2 + m2) - (60 * h1 + m1) - k)


