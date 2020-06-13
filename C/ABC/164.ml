let n = read_int ()
module SS = Set.Make(String)
let s = SS.empty
let a = List.init n (fun a -> read_line ())
let s = List.fold_right SS.add a s

let _ = Printf.printf "%d\n" @@ SS.cardinal s
