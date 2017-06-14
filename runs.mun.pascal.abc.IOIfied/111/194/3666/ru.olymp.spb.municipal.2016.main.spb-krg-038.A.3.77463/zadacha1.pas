
var
k,b:integer;
begin
readln(k);
b:=k mod 1000000000;
if b=0 then writeln('9') else
begin
b:=k mod 100000000;
if b=0 then writeln('8') else
begin
b:=k mod 10000000;
if b=0 then writeln('7') else
end;
begin
b:=k mod 1000000;
if b=0 then writeln('6') else
begin
b:=k mod 100000;
if b=0 then writeln('5') else
begin
b:=k mod 10000;
if b=0 then writeln('4') else
begin
b:=k mod 1000;
if b=0 then writeln('3') else
begin
b:=k mod 100;
if b=0 then writeln('2') else
begin
b:=k mod 10;
if b=0 then writeln('1') else
begin
b:=k mod 10;
if b>0 then writeln('0');
end;
end;
end;
end;
end;
end;
end;
end;
end.