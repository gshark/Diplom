program Asd;
var i,k,a:integer;
s:string;
begin
read(s);
k:=0;
a:=0;
for i:=1 to length(s) do
if StrToInt(s[i])=0 
 then begin k:=k+1;
            a:=a+1;
            end
 else a:=0;
 writeln(k-a);
 end.
 

