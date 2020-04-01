(* 前からst文字を消す *)
let cut st str = String.init (String.length str - st) (fun a -> String.get str (a+st))
(* 後ろからed文字を消す *)
let back_cut ed str = String.init (String.length str - ed) (String.get str)
(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)


let s = read_line ()
let l = if String.length s mod 2 = 1 then (String.length s / 2) + 1 else String.length s / 2 

let front = back_cut l s |> explode |> List.rev
let back = cut l s |> explode

(* backをfrontに合わせる *)
let rec loop lst1 lst2 =
  if lst1 = [] && lst2 = [] then 0
  else if List.hd lst1 = List.hd lst2 then loop (List.tl lst1) (List.tl lst2)
  else 1 + loop (List.tl lst1) (List.tl lst2)

let _ = (if front = back || String.length s = 1 then 0 else loop front back) |> Printf.printf "%d\n"
