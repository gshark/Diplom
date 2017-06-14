  var k,z,beauty: integer;
begin
  z:=0; beauty:=0;
  read(k);
  while k>0 do
  begin
    if k mod 10<>0 then z:=1;
    if (k mod 10=0) and (z=1) then beauty:=beauty+1;
    k:=k div 10;
  end;
  write(beauty);
end.