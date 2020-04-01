(* 前からst文字を消す *)
let cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))
(* 後ろからed文字を消す *)
let back_cut ed str = String.init (String.length str - ed) (String.get str)
let n = read_int ()
let s = read_line ()
let l = String.length s / 2
let _ = 
  (if n mod 2 = 1 then "No" else
  if cut l s = back_cut l s then "Yes" else "No") |> print_endline