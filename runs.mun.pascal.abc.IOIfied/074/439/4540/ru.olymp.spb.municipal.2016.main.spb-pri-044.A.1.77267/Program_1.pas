var n,i,t,p,st_n,l:integer;
    b:boolean;
function st(i:integer):integer;
var j,c:integer;
begin
  c:=10;
  for j:=3 to i do
    c:= c * 10;
  st:=c;
end;    

begin
  read(n);
  for i:=2 to 9 do
  begin
    st_n:= st(i);
    p:=(n mod (st_n)) div (st_n div 10);
    
    if (p = 0) and (b = true) then begin inc(t); inc(l) end
    else if (p <> 0) then begin b:= true; l:=0 end;;
  end;
  write(t - l);
end.