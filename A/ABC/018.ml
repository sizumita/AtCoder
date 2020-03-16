let ps = Scanf.scanf " %d %d %d" @@ fun a b c -> [a; b; c]
let _ = List.iter (fun x -> Printf.printf "%d\n" @@ List.fold_left (fun r y -> r + if y > x then 1 else 0) 1 ps) ps