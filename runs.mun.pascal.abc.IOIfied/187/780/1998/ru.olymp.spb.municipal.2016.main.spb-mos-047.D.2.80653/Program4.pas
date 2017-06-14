program abc;
var a,b,n,s:integer;
begin
readln(a,b);




  for i:integer:=1 to a do
  begin
  for k:integer:=1 to a do
    s:=s+i*k;
  if s mod b = 0 then inc(n);
  end;
  

writeln(n);
end.
  
    

        