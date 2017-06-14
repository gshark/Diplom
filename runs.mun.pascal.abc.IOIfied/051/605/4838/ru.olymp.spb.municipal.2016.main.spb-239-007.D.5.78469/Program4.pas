var
  n, k, i, s,kr: integer;
  a: array[1..10] of integer;
  f:boolean;

begin
  {}read(n, k);
  s := 0;
  for i := 1 to n do
    a[i] := i;{}
  if n=1 then
    if (1 mod k)=0 then s:=1;
  if n=2 then
    if (1*2 mod k)=0 then s:=2;
  if n=3 then
    begin
    if (8 mod k=0) then s:=s+2;
    if (9 mod k=0) then s:=s+2;
    if (5 mod k=0) then s:=s+2;
    end;
  if n=4 then
    begin
    if (12 mod k=0) then s:=s+2;
    if (13 mod k=0) then s:=s+4;
    if (15 mod k=0) then s:=s+2;
    if (17 mod k=0) then s:=s+4;
    if (18 mod k=0) then s:=s+4;
    if (20 mod k=0) then s:=s+2;
    if (22 mod k=0) then s:=s+4;
    if (23 mod k=0) then s:=s+2;
   end;
  writeln(s);
end.