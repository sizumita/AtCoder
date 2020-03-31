let add ary value =
  Array.append ary [|value|]

let get_graph n =
  Array.init n (fun a -> [])

(* 頂点数と辺数 *)
let n, m = Scanf.sscanf (read_line ()) "%d %d" (fun n m ->
    n, m
  )
let graph = get_graph n

(* グラフ入力受取 (ここでは無向グラフを想定) *)
let _ =
  let rec read_points i =
    if i < m then
      Scanf.sscanf (read_line ()) "%d %d" (fun a b ->
        graph.(a) <- graph.(a) @ [b];
        graph.(b) <- graph.(b) @ [a];
        read_points (i+1)
      )
    else ()
  in read_points 0

(* BFS のためのデータ構造 *)
let dist = Array.init n (fun a -> -1)
let que = Queue.create ()


(* 初期条件 (頂点 0 を初期ノードとする) *)
let _ =
  dist.(0) <- 0;
  Queue.push 0 que


let _ =
  let rec loop () =
    (* BFS 開始 (キューが空になるまで探索を行う) *)
    if Queue.is_empty que = false then
    (* キューから先頭頂点を取り出す *)
    let v = Queue.take que in
    Printf.printf "%d\n" v;

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
  in loop ()

let _ =
  (* 結果出力 (各頂点の頂点 0 からの距離を見る) *)
  for v = 0 to n-1 do
    Printf.printf "%d: %d\n" v dist.(v)
  done