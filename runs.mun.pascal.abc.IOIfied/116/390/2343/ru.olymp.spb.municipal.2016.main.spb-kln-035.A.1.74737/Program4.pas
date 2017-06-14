var k, kk, c: integer;
var en: boolean;
BEGIN
 read(k);
 kk := k;
 c := 0; en := true;
 while (en=true) do begin
  if (kk mod 10 <> 0) then en:=false;
  kk := kk div 10;
 end;
 while (kk>0) do begin
  if (kk mod 10 = 0) then c := c + 1;
  kk := kk div 10;
 end;
 writeln(c);
END.