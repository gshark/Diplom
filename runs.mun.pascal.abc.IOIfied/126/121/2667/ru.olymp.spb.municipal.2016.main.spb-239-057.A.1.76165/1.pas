var
k,o:integer;
f:boolean;

begin
    readln(k);
    o:=0;
    f:=false;
    while k>0 do
    begin
         if (k mod 10 = 0) then
         begin
             if f then
                inc(o)
         end
         else
             f:=true;
         k:=k div 10;
    end;
    writeln(o);




end.