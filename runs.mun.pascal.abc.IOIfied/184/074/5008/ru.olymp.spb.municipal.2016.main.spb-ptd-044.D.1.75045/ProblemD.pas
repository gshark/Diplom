program ProblemD;


type seq = array[1..10] of integer;
     use = array[1..10] of boolean;


procedure generate(a: seq; pos: use; now, n, k: integer; var count: integer);
var i, j, s, t, n1, sum: integer;
begin
if now = n + 1 then
  begin
    sum := 0;
    for i := 1 to n - 1 do
      sum := sum + a[i] * a[i + 1];
    if sum mod k = 0 then
      count := count + 1;
  end;
for i := 1 to n do
  if pos[i] then
    begin
      a[now] := i;
      pos[i] := False;
      generate(a, pos, now + 1, n, k, count);
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
count := 0;
generate(a, pos, 1, n, k, count);
writeln(count);
end.