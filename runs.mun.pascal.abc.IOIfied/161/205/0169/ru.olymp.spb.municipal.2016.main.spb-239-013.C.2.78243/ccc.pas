program c;
var
n:integer;
begin
read(n);
if n=1 then 
begin
  writeln('a');
end
else
if n=2 then 
begin
  writeln('aa');
  writeln('aa');
end
else
if n=3 then 
begin
  writeln('aba');
  writeln('bab');
  writeln('aba');
end
else
if n=4 then 
begin
  writeln('abba');
  writeln('baab');
  writeln('baab');
  writeln('abba');
end
else
if n=5 then 
begin
  writeln('abcba');
  writeln('babab');
  writeln('cbabc');
  writeln('babab');
  writeln('abcba');
end
else
if n=6 then 
begin
  writeln('abccba');
  writeln('babbab');
  writeln('cbaabc');
  writeln('cbaabc');
  writeln('babbab');
  writeln('abccba');
end
else
if n=7 then 
begin
  writeln('abcdcba');
  writeln('babcbab');
  writeln('cbababc');
  writeln('dcbabcd');
  writeln('cbababc');
  writeln('babcbab'); 
  writeln('abcdcba');
end
else
if n=8 then 
begin
  writeln('abcddcba');
  writeln('babccbab');
  writeln('cbabbabc');
  writeln('dcbaabcd');
  writeln('cbabbabc');
  writeln('babccbab'); 
  writeln('abcddcba');
end
else
if n=9 then 
begin
  writeln('abcdedcba');
  writeln('babcdcbab');
  writeln('cbabcbabc');
  writeln('dcbababcd');
  writeln('edcbabcde');
  writeln('dcbababcd');
  writeln('cbabcbabc');
  writeln('babcdcbab');  
  writeln('abcdedcba');  
end
end.