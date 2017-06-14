Program null;
var 
 a,n,k  : integer;
begin
 readln(a);
 a := a div 100;
 k := 10;
 n := 0;
 if (a>10) then
  begin
    while a <> 0 do
     begin
      if (a mod k = 0) then
        n := n + 1;
      a := a div k;
     end;
  end;
   writeln(n);
end.