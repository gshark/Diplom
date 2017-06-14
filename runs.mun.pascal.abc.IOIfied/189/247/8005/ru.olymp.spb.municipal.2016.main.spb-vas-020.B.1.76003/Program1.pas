program one;
var n,p,q,tmp,i,j:integer;
a,b,c:real;

function sokr(a,b:integer):integer;
begin
 if (a mod b = 0) then sokr:=b else begin
  sokr:=sokr(max(a mod b, b), min(a mod b, b));
 end;
end;

begin

readln(n,p,q);
a:=1/p;
b:=1/q;

for j:=1 to n-1 do begin
  for i:=j to n-1 do begin
    c:=j/i;
    if (c < b) and (c > a) then begin
      tmp:=sokr(max(i,j),min(i,j));
      writeln(j div tmp,'/',i div tmp);
    end;
  end;
end;

end.