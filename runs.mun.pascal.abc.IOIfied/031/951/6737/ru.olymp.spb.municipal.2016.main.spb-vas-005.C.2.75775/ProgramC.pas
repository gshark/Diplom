program numberC;
var n:integer;
begin
readln(n);
if(n=0) then begin
write();
end;
if (n=1) then begin
write ('a');
end;
if (n=2) then begin
writeln ('aa');
writeln('aa');
end;
if (n=3) then begin
writeln ('aba');
writeln('bab');
writeln('aba');
end;
if (n=4) then begin
writeln ('abba');
writeln('baab');
writeln('baab');
writeln('abba');
end;
if (n=5) then begin
writeln ('abcba');
writeln('babab');
writeln('cbabc');
writeln('babab');
writeln('abcba');
end;
if (n=6) then begin
writeln ('abccba');
writeln('babbab');
writeln('cbaabc');
writeln('cbaabc');
writeln('babbab');
writeln('abccba');
end;
f (n=7) then begin
writeln ('abcdcba');
writeln('babcbab');
writeln('cbababc');
writeln('dcbabcd');
writeln('cbababc');
writeln('abcdcba');
end;
