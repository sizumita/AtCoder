module CountDict = Map.Make(Int)
let cnt_int lst =
  let rec add_lst dict l =
    match l with
    | [] -> dict
    | first :: rest ->
      if CountDict.mem first dict then add_lst (CountDict.add first ((CountDict.find first dict) + 1) dict) rest else
      add_lst (CountDict.add first 1 dict) rest
  in add_lst CountDict.empty lst
let n = read_int ()
let a = Array.init n @@ fun _ -> Scanf.scanf " %d" @@ fun a -> a
let dp = Array.init (n+1) (fun _ -> 0)

let rec loop i =
  if i >= n then () else (dp.(i+1) <- dp.(i) + a.(i); loop (i+1))

let _ = dp.(1) <- a.(0); loop 1

let dict = cnt_int @@ Array.to_list dp

let _ = Printf.printf "%d\n" @@ (CountDict.fold (fun f m a -> a + (m * (m - 1))) dict 0) / 2


let print_dict key value =
  Printf.printf "%d: %d\n" key value
