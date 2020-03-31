let add ary value =
  Array.append ary [|value|]

let get_graph n =
  Array.init n (fun a -> [])

(* 頂点数と辺数 *)
let n, x, y = Scanf.sscanf (read_line ()) "%d %d %d" (fun n x y ->
    n, x, y
  )
let graph = get_graph n

let _ =
  let rec loop i =
    if i < n then
      (if i = 0 then
        (graph.(i) <- graph.(i) @ [(i+1)])
        else if i = n-1 then (graph.(i) <- graph.(i) @ [(i-1)]) else graph.(i) <- graph.(i) @ [(i+1); (i-1)]; 
      loop (i+1))
    else ()
  in loop 0;
  graph.(x-1) <- graph.(x-1) @ [y-1];
  graph.(y-1) <- graph.(y-1) @ [x-1]


let get_nagasa x = 
(* 初期条件 (頂点 x を初期ノードとする) *)
(* BFS のためのデータ構造 *)
  let dist = Array.init n (fun a -> -1) in
  let que = Queue.create () in
  let _ =
    dist.(x) <- 0;
    Queue.push x que in
  let rec loop () =
    (* BFS 開始 (キューが空になるまで探索を行う) *)
    if Queue.is_empty que = false then
    (* キューから先頭頂点を取り出す *)
    let v = Queue.take que in
    (* v から辿れる頂点をすべて調べる *)
    let rec search lst =
      match lst with
      | [] -> ()
      | first :: rest ->
        (* すでに発見済みの頂点は探索しない *)
        if dist.(first) = -1 then 
          (* 新たな白色頂点 first について距離情報を更新してキューに追加する *)
          (dist.(first) <- (dist.(v) + 1);
          Queue.push first que;
          search rest)
        else search rest
    in search graph.(v);
    loop () else () 
  in let rec get k =
    if k = n then [] else dist.(k) :: get (k+1)
  in loop (); get 0

let all = 
  let rec loop i =
    if i = n then [] else (get_nagasa i) @ (loop (i+1))
  in loop 0

let count_list lst target =
  let rec loop l =
    match l with
    | [] -> 0
    | first :: rest -> if first = target then 1 + loop rest else loop rest
  in loop lst

let _ =
  for i = 1 to n-1 do
    Printf.printf "%d\n" @@ (count_list all i / 2)
  done
