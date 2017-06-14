program colored_diagonals;

const
 COLORS = 'abcdefghijklmnopqrstuvwxyz';

var
 n, counter, counter2, isubres: Integer;
 subres: string;
 
begin
  Readln(n);
  for counter := 1 to n do
  begin
    subres := String.Empty;
    for counter2 := 1 to n do
      subres += COLORS[(Min(Abs(counter - counter2), Abs(n - counter + 1 - counter2))) mod 26 + 1];
    Writeln(subres);
  end;
end.