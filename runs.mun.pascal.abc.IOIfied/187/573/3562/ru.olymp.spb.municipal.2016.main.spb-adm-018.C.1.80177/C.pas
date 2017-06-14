var
  n, i, f: shortint;//ввод и счетчики;

begin
  read(n);
  for i := 1 to n do
  begin
    for f := 1 to n do
    begin
    
    write(chr(min(97+Abs(i-f)-(26 * ((97+Abs(i-f))div 123)),97+Abs(n-(i+f)+1)-(26*((97+Abs(n-(i+f)+1))div 123)))));
    end;
    writeln(' ');
  end;
end.