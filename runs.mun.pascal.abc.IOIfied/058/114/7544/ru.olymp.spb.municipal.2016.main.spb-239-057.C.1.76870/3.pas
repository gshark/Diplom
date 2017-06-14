var
n,i,j:integer;
c:char;
begin
     readln(n);
     for i:=1 to n div 2 do
     begin
     for j:= 1 to n div 2  do
          write(Chr((abs(j-i)) mod 26 + Ord('a')));
     for j:= n div 2 to n -1  do
          write(Chr((abs(n-i-j)) mod 26 + Ord('a')));
     writeln;
     end;
     for i:=n div 2 to n-1 do
     begin
     for j:= 1 to n div 2  do
         write(Chr((abs(n-i-j)) mod 26 + Ord('a')));

     for j:= n div 2 to n -1  do
          write(Chr((abs(j-i)) mod 26 + Ord('a')));
     writeln;
     end;
end.