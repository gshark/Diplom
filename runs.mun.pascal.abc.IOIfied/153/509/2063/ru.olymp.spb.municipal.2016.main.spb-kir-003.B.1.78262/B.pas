uses System.Collections;
var
 n , q , p : integer;
 mas : List<string>;
function f (a , b : integer) : boolean;
 begin
  for var i := 2 to Min(a,b) do
   if ((a mod i) = 0) and ((b mod i) = 0) then
    begin
     Result := false;
     exit;
    end;
  Result := true;
 end;
begin
 mas := new List<string>;
 Read(n,q,p);
 for var i := p to n do
  begin
   for var j := 1 to i - 1 do
    begin
     if ( (j / i) < (1 / p) ) and ( (j / i) > (1 / q) ) and f(i,j) then
      mas.Add((j / i) + ' ' + j.ToString + '/' + i.ToString);
    end;
  end;
 mas.Sort;
 for var i := 1 to mas.Count do
  Writeln(Copy(mas.ElementAt(i - 1),Pos(' ',mas.ElementAt(i - 1)) + 1,mas.ElementAt(i - 1).Length + 1 - Pos(' ',mas.ElementAt(i - 1))));
end.