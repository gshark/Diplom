var
k:string;
q,i:integer;
b:boolean;

begin

q:=0;
b:=false;

readln(k);

for i:=length(k) downto 1 do begin
if(k[i] = '0')then begin

if(b = true)then q:=q+1;


end else b:=true;


end;
writeln(q);
end.