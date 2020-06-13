(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)
let k = read_int()
let s = read_line()
let ex_s = s |> explode
let _ = (if String.length s <= k then s else
  (String.init k (fun a -> List.nth ex_s a) ^ "...")
) |> print_endline