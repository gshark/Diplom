program_1;
var
k: integer;
f: boolean;
g: byte;
begin
f:=true;
k:=0;
readln(k);
g:=0;
while k<>0 DO begin
              IF k mod 10<>0 THEN f:=false;
              IF (k mod 10=0) and (f=false)  THEN inc(g);
              k:=k div 10;
              end;
write(g);
end.