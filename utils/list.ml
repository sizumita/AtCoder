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


let binary_search key target = 
  1
