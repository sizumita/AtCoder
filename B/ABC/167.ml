let a,b,c,k = Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c k -> a,b,c,k)
let _ = (if k <= a then k else if k <= a + b then a else a - (k - a - b)) |> Printf.printf "%d\n"