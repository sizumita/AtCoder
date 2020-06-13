(* listのmax *)
let max_list lst_ = 
  let rec search_max lst value = 
    match lst with
      [] -> value
    | first :: rest -> if first > value then search_max rest first else search_max rest value
  in search_max lst_ 0

(* listのmin *)
let min_list lst_ = 
  let rec search_min lst value = 
    match lst with
      [] -> value
    | first :: rest -> if first < value then search_min rest first else search_min rest value
  in search_min lst_ 0

(* リストの全てのようそ　重複なし *)
let get_all_elements l =
  let rec get existed lst =
    match lst with
      [] -> existed
    | first :: rest -> if List.exists (fun a -> a = first) existed then get existed rest else get (first :: existed) rest
  in get [] l

let average lst =
  let rec sum lst =
    match lst with
    | [] -> 0
    | first :: rest -> first + sum rest
  in (float_of_int @@ sum lst) /. (float_of_int @@ List.length lst)

let rec sum lst =
  match lst with
  | [] -> 0
  | first :: rest -> first + sum rest


let count_list lst target =
  let rec loop l =
    match l with
    | [] -> 0
    | first :: rest -> if first = target then 1 + loop rest else loop rest
  in loop lst


module CountDict = Map.Make(Int)
let cnt_int lst =
  let rec add_lst dict l =
    match l with
    | [] -> dict
    | first :: rest ->
      if CountDict.mem first dict then add_lst (CountDict.add first ((CountDict.find first dict) + 1) dict) rest else
      add_lst (CountDict.add first 1 dict) rest
  in add_lst CountDict.empty lst







