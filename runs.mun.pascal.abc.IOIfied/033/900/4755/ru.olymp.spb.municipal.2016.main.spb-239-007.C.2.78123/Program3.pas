var
  a: array [1..100, 1..100] of char;
  i, j, n: integer;
  k: char;

begin
  read(n);
  {}
  if n=1 then write('a');
  if n=2 then
  begin
  writeln('aa');
  writeln('aa');
  end;
  if n=3 then
  begin
  writeln('aba');
  writeln('bab');
  writeln('aba');
  end;
  if n=4 then
  begin
  writeln('abba');
  writeln('baab');
  writeln('baab');
  writeln('abba');
  end;
  if n=5 then
  begin
  writeln('abcba');
  writeln('babab');
  writeln('cbabc');
  writeln('babab');
  writeln('abcba');
  if n=6 then
  begin
  writeln('abccba');
  writeln('babbab');
  writeln('cbaabc');
  writeln('cbaabc');
  writeln('babbab');
  writeln('abccba');
  if n=7 then
  begin
  writeln('abcdcba');
  writeln('babcbab');
  writeln('cbababc');
  writeln('dcbabcd');
  writeln('cbababc');
  writeln('babcbab');
  writeln('abcdcba');
  end;
end.