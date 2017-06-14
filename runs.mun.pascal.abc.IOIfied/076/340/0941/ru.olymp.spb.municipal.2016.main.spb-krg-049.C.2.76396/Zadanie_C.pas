program zadanie_C;
  var a:array[1..100,1..100] of char;i,j,n,min:integer;
    begin
    read(n);
    for i:= 1 to n do
    begin
      for j:= 1 to n do
      begin
      if abs(i-j)>abs(n-i-j) then
      min:=abs(n-i-j+1)
      else
      min:=abs(i-j);
      if min> 25 then
      min:= min - 26*(min div 26);
      a[i][j]:=char(97+ min);
      write(a[i][j]);
      end;
    writeln();
    end;
    end.