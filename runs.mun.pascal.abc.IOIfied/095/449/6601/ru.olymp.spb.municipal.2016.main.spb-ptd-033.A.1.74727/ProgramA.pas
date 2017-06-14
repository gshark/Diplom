Program A;
var k,x,y:integer;
BEGIN
read(k);x:=0;
while k<>0 do begin 
              if k mod 10=0 then k:=k div 10
                            else begin
                                 while k<>0 do if k mod 10 = 0 then begin inc(x); k:=k div 10; end
                                                               else k:=k div 10;
                                 end;
              end;
writeln(x)
END.