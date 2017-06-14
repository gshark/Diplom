program D;
var n,p,q,i,g:integer;
f:string;
begin
read(n);
read(p);
read(q); 
 for g:=1 to n do begin
 for i:=1 to (n-1) do begin
  if ((1/p)<(g/i)) and ((g/i)<(1/q)) then begin
   f:= inttostr(g) + '/' + inttostr(i);
   writeln(f)
  end;
 end;
end; 
end.  