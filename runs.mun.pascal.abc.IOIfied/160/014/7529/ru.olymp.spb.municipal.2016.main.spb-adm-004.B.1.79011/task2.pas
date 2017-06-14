program task2;
var n,p,q,i,j:integer;
var d1,d2,d1p,d1q:integer;
var strs:array[1..100] of string;
var nums:array[1..100] of real;
var id,idmin:integer;
function nod(a,b:integer):integer;
begin
while a <> b do
begin
 if a > b then a:= a - b
 else b:= b - a;
end;
nod:= a;
end;
Begin
 id:= 0;
 readln(n,p,q);
 for d2:= q + 1 to n do
 begin
  for d1:= 2 to d2-1 do
  begin
   d1p:= d1*p;
   d1q:= d1*q;
   if (nod(d1,d2) = 1) and (d1p > d2) and (d1q < d2) then 
   begin
    inc(id);
    strs[id]:= concat(inttostr(d1),'/',inttostr(d2));
    nums[id]:= d1 / d2;
    {writeln(d1,'/',d2, ' ', d1/d2);}
   end;
  end;
 end;
 
 
 for i:= 1 to id do
 begin
  idmin:= 1;
  for j:= 2 to id do
  begin
   if (nums[j] < nums[idmin]) then idmin:= j;
  end;
  writeln(strs[idmin]);
  nums[idmin]:= 1;
 end;
end.