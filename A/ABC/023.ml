(* charをstringに *)
let string_of_char chr = 
  let buf = Buffer.create 16 in
  Buffer.add_char buf chr;
  Buffer.contents buf

let _ = Scanf.sscanf (read_line()) "%c%c" (fun a b ->
    (int_of_string @@ string_of_char a) + (int_of_string @@ string_of_char b)
) |> Printf.printf "%d\n"