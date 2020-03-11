(* 文字列を逆にする *)
let reverse s = let len = String.length s in
  String.init len (fun i -> s.[len - 1 - i])

(* 文字列をcharのlistにする *)
let explode s = List.init (String.length s) (String.get s)