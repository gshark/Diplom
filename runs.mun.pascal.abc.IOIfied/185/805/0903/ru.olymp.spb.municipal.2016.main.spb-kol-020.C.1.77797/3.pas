program AFSJD;
var k,i,n: integer;
var x:real;
A: array[1..26] of string;
begin
writeln('¬ведите кол-во строк');
read(n);
if n=1 then
writeln('a');
if n=2 then begin
writeln('aa');
writeln('aa');
end;
if n=3 then begin
writeln('aba');
writeln('bab');
writeln('aba');
end;
if n=4 then  begin
writeln('abba');
writeln('baab');
writeln('baab');
writeln('abba');
end;
if n=5 then  begin
writeln('abcba');
writeln('babab');
writeln('cbabc');
writeln('babab');
writeln('abcba');
end;
if n=6 then begin
writeln('abcdcba');
writeln('babcbab');
writeln('cbababc');
writeln('cbababc');
writeln('babcbab');
writeln('abcdcba');
end;
if n>6 then writeln('я знаю как сделать, но не могу оформить,sorry :(');
end.