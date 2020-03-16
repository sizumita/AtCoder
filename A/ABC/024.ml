type abck = { a : int; b : int; c : int; k : int}
let m = Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c k ->
  {a=a; b=b; c=c; k=k}
)
let _ = Scanf.sscanf (read_line()) "%d %d" (fun s t ->
  if s+t >= m.k then s * m.a + t * m.b - m.c * (s+t) else s * m.a + t * m.b
)  |> Printf.printf "%d\n"