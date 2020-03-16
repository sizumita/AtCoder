let group1 = [1;3;5;7;8;10;12]
let group2 = [4;6;9;11]
let group3 = [2]

let _ = Scanf.sscanf (read_line()) "%d %d" (fun x y ->
  if x = y then "Yes" else 
  if List.mem x group1 && List.mem y group1 then "Yes" else 
  if List.mem x group2 && List.mem y group2 then "Yes" else
  if List.mem x group3 && List.mem y group3 then "Yes" else "No"
) |> print_endline