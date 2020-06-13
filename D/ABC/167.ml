let n,k = Scanf.sscanf (read_line()) "%d %d" (fun n k -> n,k)
let a_array = Array.init n @@ fun _ -> Scanf.scanf " %d" @@ fun a -> a - 1

let rec when_i i lst ans =
  match lst with
  | [] -> -1
  | first :: rest ->
    if first = i then ans else when_i i rest (ans+1)

let rec loop to_ gone =
  if List.mem to_ gone then let array_gone = Array.of_list gone in let o = (when_i to_ gone 0) in (o, (List.init ((List.length gone)-o)) @@ fun mm -> array_gone.(o+mm)) else loop a_array.(to_) (gone @ [to_])

let mae, result = loop a_array.(0) [0]
let result_length = List.length result
let amari = (k-mae) mod result_length
let _ = Printf.printf "%d\n" ((Array.of_list result).(amari)+1)




