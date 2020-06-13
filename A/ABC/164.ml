let s, w = Scanf.sscanf (read_line()) "%d %d" (fun s w ->s,w
)
let _ = (if s > w then "safe" else "unsafe") |> prerr_endline