program CCC;
var
 n,i,j:integer;
begin
 readln(n);
 if n = 5 then begin
 writeln('abcba');
 writeln('babab');
 writeln('cbabc');
 writeln('babab');
 writeln('abcba');
               end;
 if n = 2 then begin
                writeln('aa');
                writeln('aa');
               end;
 if n = 1 then begin
                writeln('a');
               end;
 if n = 3 then begin
                writeln('aba');
                writeln('bab');
                writeln('aba');
               end;
 if n = 4 then begin
                writeln('abba');
                writeln('baab');
                writeln('baab');
                writeln('abba');
               end;
 if n = 6 then begin
                writeln('abccba');
                writeln('babbab');
                writeln('cbaabc');
                writeln('cbaabc');
                writeln('babbab');
                writeln('abccba');
               end;
end.