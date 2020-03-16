(* 前からst文字を切り抜く *)
let slice st s = String.init (String.length s - st) (fun a -> String.get s (a+st))
let s = read_line () |> slice 4
let _ = print_endline ("2018" ^ s)