program dfg;
var b: boolean; a, s:longint;
begin
s:=0;
b:=false;
read (a);
repeat
  begin
  case (a mod 10) of
    0: if b=true then s:=s+1;
    1..9: b:=true;
    end;
  a:=a div 10;
  end
until a div 10=0;
writeln (s);
end.