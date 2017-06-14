program abc;
  var n, k, q ,g, i:integer;
  a:array[1..10] of integer; 
BEGIN;
  read(n, k);
  
  g:=0;
    for i := 1 to n do
    a[1]:=1;
     for i:= 1 to n do
    begin
    g:= g + (a[1] * a[i+1]);
      if g mod k =0 then
      n:= n + 1
      end;
     n:= n-4;
   writeln(n);
  

END.