
var
k,b:integer;
begin
readln(k);
b:=k mod 1000000000;
if b=0 then writeln('9');
begin
b:=k mod 100000000;
if b=0 then writeln('8');
begin
b:=k mod 10000000;
if b=0 then writeln('7');
end;
begin
b:=k mod 1000000;
if b=0 then writeln('6');
begin
b:=k mod 100000;
if b=0 then writeln('5');
begin
b:=k mod 10000;
if b=0 then writeln('4');
begin
b:=k mod 1000;
if b=0 then writeln('3');
begin
b:=k mod 100;
if b=0 then writeln('2');
begin
b:=k mod 10;
if b=0 then writeln('1');
begin
b:=k mod 10000000;
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