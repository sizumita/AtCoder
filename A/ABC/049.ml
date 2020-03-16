let boins = ['a'; 'e'; 'i'; 'o'; 'u']
let _ = (if List.mem (read_line()).[0] boins then "vowel" else "consonant") |> print_endline