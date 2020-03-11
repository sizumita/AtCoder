let c = (read_line ()).[0] |> Char.code
let _ = print_char (Char.chr (c+1))