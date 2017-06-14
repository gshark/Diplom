program ProblemD;


type seq = array[0..10] of integer;
     use = array[1..10] of boolean;


procedure generate(a: seq; pos: use; now, n, k, sum: integer; var count: integer);
var i, j, s, t, n1: integer;
begin
if now = n + 1 then
  if sum mod k = 0 then
    count := count + 1;
for i := 1 to n do
  if pos[i] then
    begin
      a[now] := i;
      pos[i] := False;
      generate(a, pos, now + 1, n, k, sum + i * a[now - 1], count);
      a[now] := 0;
      pos[i] := True;
    end;
 end;


var a: seq;
    pos: use;
    n, i, j, k, s, t, count: integer;
begin
read(n, k);
for i := 1 to n do
  pos[i] := True;
a[0] := 0;
count := 0;
generate(a, pos, 1, n, k, 0, count);
writeln(count);
end.