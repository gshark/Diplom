program zadacha_c;
const max=10;
var col,n,i,j:integer;
begin
  randomize;
  n:=random(max)+1;
  writeln(n:3);
  writeln;
  for j:=1 to n do begin
     for i:=1 to n do begin
       col:=abs(i-j);
       case col of
         0:write('a');
         1:write('b');
         2:write('c');
         3:write('d');
         4:write('e');
         5:write('f');
         6:write('g');
         7:write('h');
         8:write('i');
         9:write('j');
         10:write('k');
         11:write('l');
         12:write('m');
         13:write('n');
         14:write('o');
         15:write('p');
         16:write('q');
         17:write('r');
         18:write('s');
         19:write('t');
         20:write('u');
         21:write('v');
         22:write('w');
         23:write('x');
         24:write('y');
         25:write('z');
        end;
       end;
       writeln;
    end;
 end.