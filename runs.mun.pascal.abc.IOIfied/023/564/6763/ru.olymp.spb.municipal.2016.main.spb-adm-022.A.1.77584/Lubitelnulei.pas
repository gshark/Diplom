var inn, prom, c, outt, outreal:integer;
begin
readln(inn);
prom:=0; c:=0; outt:=0; outreal:=0;
while inn>0 do
    begin
    prom:= inn mod 10;
    inn:= inn div 10;
    if (prom = 0) and (c = 1) then
          outt:=outt+1
    else if prom <> 0 then
       if c = 0 then
          c:= 1
       else if c = 1 then
          begin
          outreal:=outreal+outt;
          outt:=0;
          end;
    end;
writeln(outreal);
end.    