var
  k: string;
  l: char;
  a, b, e, c: integer;

begin
  writeln('k');
  readln(b); 
  repeat
    b := b div 10;
    e := e + 1;
  until (b mod 10) <> 0;
  repeat
    b := b div 10;
    case (b mod 10) of
      0: c := c + 1
    end;
  until (b div 10 < 1);
  writeln(c);
end.