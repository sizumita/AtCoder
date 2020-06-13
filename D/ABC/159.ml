module CountDict = Map.Make(Int)
let count_int lst =
  let rec add_lst dict l =
    match l with
    | [] -> dict
    | first :: rest ->
      if CountDict.mem first dict then add_lst (CountDict.add first ((CountDict.find first dict) + 1) dict) rest else
      add_lst (CountDict.add first 1 dict) rest
  in add_lst CountDict.empty lst

let n = read_int ()
let a = read_line () |> String.split_on_char ' ' |> List.map int_of_string

let dict = count_int a

let all = (CountDict.fold (fun key value a -> a + (value * (value - 1))) dict 0) / 2

let rec loop lst =
  match lst with
  | [] -> ()
  | first :: rest -> let value = CountDict.find first dict in Printf.printf "%d\n" (all - value + 1); loop rest

let _ = loop a
