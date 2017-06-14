program problemB;


type myarr = array[1..1000000, 1..2] of integer;


function nod(a, b: integer): integer;
  var i, j, ans: integer;
  begin
  ans := 1;
  for i := 1 to a do
    if (a mod i = 0) and (b mod i = 0) then
      ans := i;
  nod := ans;
  end;
  

procedure bubble_sort(n: integer; var sort: myarr);
  var i, j, k, s, a, b: integer;
  mem : array[1..2] of integer;
  begin
  for i:= 1 to n - 1 do
    for j := 1 to n - i do
       if (sort[j, 1] / sort[j, 2]) > (sort[j + 1, 1] / sort[j + 1, 2]) then
          begin
            a := sort[j, 1];
            b := sort[j, 2];
            sort[j, 1] := sort[j + 1, 1];
            sort[j, 2] := sort[j + 1, 2];
            sort[j + 1, 1] := a;
            sort[j + 1, 2] := b;
          end;
  end;


var n, p, q, i, j, s, t, a, b, max, min, count: integer;
ans, c: myarr;
begin
read(n, p, q);
count := 0;
for i := 1 to n do
  begin
    min := i div p;
    //if i mod p > 0 then
      min := min + 1;
    max := i div q;
    if i mod q = 0 then
      max := max - 1;
    //writeln(i, ' ', min, ' ', max);
    for j := min to max do
      if (nod(i, j) = 1) then
        begin
          count := count + 1;
          ans[count, 1] := j;
          ans[count, 2] := i;
        end;
  end;
bubble_sort(count, ans);
for i := 1 to count do
  writeln(ans[i, 1], '/', ans[i, 2]);
end.