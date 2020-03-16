(* charのlistをstringに *)
let string_of_chars chars = 
  let buf = Buffer.create 16 in
  List.iter (Buffer.add_char buf) chars;
  Buffer.contents buf
let _ = Scanf.sscanf (read_line()) "%s %s %s" (fun s1 s2 s3 ->
  [s1.[0]; s2.[0]; s3.[0]]
) |> string_of_chars |> String.uppercase_ascii |> print_endline