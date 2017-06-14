program zad1;
var
  x: longint;
  k, y, z: integer;
  s: String;
  c: char;
  w: boolean;
begin
  w:= false;
  
  readln(x);
  
  str(x, s);
  y:= length(s);
  
  for z:= 1 to y do
  begin
    c:= s[y-z+1];
    
    if (c = '0') and (w = true) then inc(k);
    if c <> '0' then w:= true;
  end;
  
  writeln(k);
end.