begin
  var i:=ReadInteger.ToString;
  var k: integer;
  for var x:=1 to i.Length do
    if i[x]='0' then k+=1;
  for var x:=i.Length downto 1 do
    if i[x]='0' then k-=1 else break;
  writeln(k);
end.