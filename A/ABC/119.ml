let _ = Scanf.sscanf (read_line ()) "%d/%d/%d" (fun y m d ->
  match y with
  | y when y < 2019 -> print_endline "Heisei"
  | _ -> 
    match m with 
    | m when m <= 4 -> print_endline "Heisei"
    | _ -> print_endline "TBD"
)
