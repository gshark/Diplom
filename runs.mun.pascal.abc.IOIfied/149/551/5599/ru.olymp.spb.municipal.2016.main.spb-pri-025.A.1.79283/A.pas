program z1;
var k,i:integer;

begin
 readln(k); i:=0;
 while k mod 10 = 0 do k:=k div 10; 
 while k mod 10 <> 0 do k:=k div 10;
 while k mod 10 = 0 do begin inc(i); k:=k div 10; end;
 
 if k div 10 > 0 then while k mod 10 <> 0 do k:=k div 10;
 while k mod 10 = 0 do begin inc(i); k:=k div 10; end;
 
 if k div 10 > 0 then while k mod 10 <> 0 do k:=k div 10;
 while k mod 10 = 0 do begin inc(i); k:=k div 10; end;
 
 if k div 10 > 0 then while k mod 10 <> 0 do k:=k div 10;
 while k mod 10 = 0 do begin inc(i); k:=k div 10; end;
 
 if k div 10 > 0 then while k mod 10 <> 0 do k:=k div 10;
 while k mod 10 = 0 do begin inc(i); k:=k div 10; end;
 writeln(i);
end.