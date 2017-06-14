Program Gosha;
var
    p,z,B:integer;
    s: string;
    i,n: byte;
    c: char;
begin
    readln(b);
Str(B, s);
    
    n := length(s) div 2;
    for i := 1 to n do begin
        c := s[i];
        s[i] := s[length(s)-i+1];
        s[length(s)-i+1] := c;
    end;
    val(s,B);
    Str(B, s);
    p:=0;
z:=pos('0',s);
while z<>0 do
begin
inc(p);
delete(s,z,1);
z:=pos('0',s);
end;
writeln(p); {Это вывод количества пробелов}
End.