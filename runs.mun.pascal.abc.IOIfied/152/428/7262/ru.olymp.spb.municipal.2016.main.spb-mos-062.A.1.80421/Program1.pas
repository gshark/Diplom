program Abc;
const
 l=1000;
var
 i,t,k,ten:integer;

 Ar:array [1..1000] of integer;
 
begin
read(k);
 ten:=10;
 for i:=1 to l do 
  begin
   Ar[i]:=k mod ten div (ten div 10);
   ten:=ten *10;
  end;
 i:=l;
 while (Ar[i]=0)and (i>0) do
  i:=i-1;
  k:=0; 
 for t:=1 to i do
  if (Ar[t]=0) then 
   k:=k+1;
 writeln(k);
end.