let k = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> b)
let s = read_line ()
let t = s.[k-1]
let c = Bytes.of_string s
let () = Bytes.set c (k-1) (String.lowercase_ascii s).[k-1] 
let _ = print_endline (Bytes.to_string c)

