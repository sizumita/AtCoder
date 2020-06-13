let a, b, c, d = Scanf.sscanf (read_line()) "%d %d %d %d" (fun a b c d -> a,b,c,d
)
let rec loop a c =
  if c - b <= 0 then "Yes" else
  if a - d <= 0 then "No" else
  loop (a-d) (c-b)

let _ = loop a c |> print_endline