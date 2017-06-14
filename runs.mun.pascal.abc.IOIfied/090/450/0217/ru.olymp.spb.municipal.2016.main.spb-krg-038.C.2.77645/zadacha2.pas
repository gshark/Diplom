var n,a,b,c:integer;
begin
readln(n);
if n=1 then
begin
writeln('a');
end;
if n=2 then
begin
writeln('ab');
writeln('ba');
end;
if n=3 then
begin 
writeln('aba');
writeln('bab');
writeln('aba');
end;
if n=4 then
begin 
writeln('abca');
writeln('baba');
writeln('cbab');
writeln('baba');
end;
if n=5 then
begin 
writeln('abcba');
writeln('babab');
writeln('cbabc');
writeln('babab');
writeln('abcba');
end;
end.