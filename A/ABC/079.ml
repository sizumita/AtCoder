let n = read_line ()
let _ =
  (if n.[0] = n.[1] && n.[1] = n.[2] then "Yes"
  else if n.[1] = n.[2] && n.[2] = n.[3] then "Yes" else "No")
  |> print_endline