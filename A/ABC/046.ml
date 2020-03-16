module SS = Set.Make(Int)
let s = SS.empty
let s = Scanf.sscanf (read_line()) "%d %d %d" (fun a b c ->
  List.fold_right SS.add [a;b;c] s
)
let _ = Printf.printf "%d\n" (List.length @@ SS.elements s)