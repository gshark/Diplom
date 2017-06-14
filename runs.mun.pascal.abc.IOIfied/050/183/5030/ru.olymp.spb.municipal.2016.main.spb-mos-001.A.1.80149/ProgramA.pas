program p1;
var
  k, i,zb, wz: integer;
begin
  zb:= 0;
  wz:= 0;
  readln(k);
  
  for i:=0 to n.ToString().Length-1 do
   if n.ToString().ToCharArray()[i] = '0' then
      inc(zb);
      
  for i:=n.ToString().Length-1 downto 0 do
    begin
    if n.ToString().ToCharArray()[i] = '0' then
      inc(wz);
    if n.ToString().ToCharArray()[i] <> '0' then
      break;
    end;
      
  zb:= zb-wz;
      
  writeln(zb); 
end.