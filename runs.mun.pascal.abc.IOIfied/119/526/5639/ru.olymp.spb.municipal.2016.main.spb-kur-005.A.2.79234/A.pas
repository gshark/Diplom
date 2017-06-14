var
  a, k, e, c: integer;

begin
  writeln('k');
  readln(k); 
  repeat
    k := k div 10;
    e := e + 1;
  until (k mod 10) <> 0;
  repeat
    k := k div 10;
    case (k mod 10) of
      0: c := c + 1
    end;
  until (k div 10 < 1);
  writeln(c);
end.