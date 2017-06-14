program problemE;
type main = array[0..200000000] of integer;
     ans = array[1..2] of integer;


function count(r, c, n: integer): integer;
  begin
    if c > r then
      if (n > r) and (n < c) then
        count := r
      else if n > r then
        count := r - (n - c)
      else 
        count := n
    else
      if n < c then
        count := n
      else if (n >= c) and (n < r) then
        count := c
      else
        count := c - n + r;
  end;
  
  
 function place(r, c, all, num, n: integer): ans;
 var i, j, k, s, t: integer;
 x: ans;
 begin
  if c > r then
    if n < c then
    begin 
      //place := [num - all, n - (num - all) + 1]
      x[1] := num - all;
      x[2] := n - (num - all) + 1
    end
    else
      //place := [(num - all) + n - c, c - (num - all) + 1]
      begin
      x[1] := num - all + n - c;
      x[2] := c - (num - all) + 1;
      end
  else
    if n < c then
      //place := [num - all, n - (num - all) + 1]
      begin
        x[1] := num - all;
        x[2] := n - (num - all) + 1
      end
    else
      //place := [n - r + (num - all), c - (num - all)];
      begin
        x[1] := n - c + (num - all);
        x[2] := c - (num - all) + 1
      end;
  place := x;
end;


var a, b, c, i, j, k, n, now, q, r, s, sum, t: int64;
    len: main;
    x: ans;
begin
read(r, c, q);
sum := 0;
now := 0;
len[0] := 0;
for i := 1 to q do
  begin
    read(n);
    while n > sum do
      begin
        now := now + 1;
        len[now] := count(r, c, now) + len[now - 1];
        //writeln(len[now]);
        sum := len[now];
      end;
    x := place(r, c, len[now - 1], n, now);
    writeln(x[1], ' ', x[2]);
  end;
end.
    