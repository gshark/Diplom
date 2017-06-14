program b;
var n,q,p:integer;
    i,j:integer;
function keka(a,b:integer):boolean;
  var i:integer;
  begin
  i:=2;
  result:=false;
  while (i<=a) and (result=false) do
    if (a mod i=0) and (b mod i=0) then result:=true
    else i:=i+1;
  end;
begin
  read(n,p,q);
  for i:=2 to n do
    for j:=1 to i do
      if (j/i>1/p) and (j/i<1/q) and (keka(j,i)=false) then begin
        write(j,'/',i);
        writeln;
        end;
end.