(* 決められた回数だけ標準入力から取得する（int） *)
let rec read_lines_to_int_list count =
    match count with
    | 0 -> 0
    | _ -> read_int () + read_lines_to_int_list (count-1)



