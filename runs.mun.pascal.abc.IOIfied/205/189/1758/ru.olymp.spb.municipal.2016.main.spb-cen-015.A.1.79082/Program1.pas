program dn0;

var
  
  k, z, b: integer;

begin
  readln(z);
  k := 0;
  b := 10;
  if z= 100 then
  
 else if z > 10 then
    z := z div 100;
  begin
    while z <> 0 do
    begin
      if (z mod b = 0) then
        k := k + 1;
      z := z div 10;
    end;
  end;
  writeln(k);
end.