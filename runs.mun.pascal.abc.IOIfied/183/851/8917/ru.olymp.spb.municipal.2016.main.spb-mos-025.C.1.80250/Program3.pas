Program pr3;
var N,i,j,x:integer;
    z:char;
BEGIN
 x:=1;
 readln(N);
 for i:=1 to N do
  begin
   for j:=1 to N do
    BEGIN
     if (i=j) or (i+j=n+1) then write('a');
     while x <> N div 2 do
      if (i+j=j+x) or (i+x=i+j) or (x+i=j+x) then
       begin
        write(chr(ord('a')+x));
        x:=N div 2;
       end;
      x:=1;
    END;
   writeln;
  end;
END.