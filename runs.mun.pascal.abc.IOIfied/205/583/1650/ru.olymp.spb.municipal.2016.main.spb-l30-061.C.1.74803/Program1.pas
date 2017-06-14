program diagonals;
var
  curr:integer;
  n,i,j:integer;
  colors:string;
begin
  colors := 'abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyz';
  readln(n);
  for j:=1 to n do begin
    for i:=1 to n do begin
      curr:=1 + min(abs(i-j),abs(i+j-n-1));
      write(colors[curr]);
    end;
    writeln;
  end;
end.