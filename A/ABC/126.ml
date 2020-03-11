let k = Scanf.sscanf (read_line ()) "%d %d" (fun a b -> b)
let s = read_line ()

let t = s.[k-1]
let c = s.[(k-1)] <- ((String.lowercase s).[k-1])


