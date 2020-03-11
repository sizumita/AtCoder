(* 標準入力からスペースで区切られたstringのリストを返す *)
let input_string_list () = read_line()
    |> String.split_on_char ' '

(* 標準入力からスペースで区切られたintのリストを返す *)
let input_int_list () = read_line()
    |> String.split_on_char ' '
    |> List.map int_of_string

(* 決められた回数だけ標準入力から取得する（int） *)
let rec read_lines_to_int_list count =
    match count with
    | 0 -> []
    | _ -> read_int () :: read_lines_to_int_list (count-1)


