let k = Scanf.sscanf (read_line()) "%d %d" (fun a b -> b)

let a_list = read_line () 
  |> String.split_on_char ' ' 
  |> List.map int_of_string

