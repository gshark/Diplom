const
 A = 97;
var
 n : integer;
 mas : array[1..100,1..100] of integer;
 
function f(i,j,n : integer): integer;
 begin
  result := Min( Abs(j - i) ,Abs( (n + 1)- i - j) ) ;
 end;
begin
 Read(n);
 
 for var i := 1 to n do
  for var j := 1 to n do
   mas[i,j] := f(i,j,n mod 26);
 for var i := 1 to n do
  begin
   for var j := 1 to n do
    Write(Chr(mas[i,j] + A));
   Writeln;
  end;
 
end.