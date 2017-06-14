begin
  var xl,yl,c: integer;
  read(yl,xl,c);
  var arr:=new integer[c];
  for var x:=0 to c-1 do
    read(arr[x]);
  
  foreach var z: integer in arr do
  begin
    var x:=1;
    var y:=1;
    var k:=1;
    var inc:=1;
    while (k+inc<=z) and (x<xl) do
    begin
      k+=inc;
      x+=1;
      if inc<yl then inc+=1;
    end;
    if (x=xl) then
      while k+inc<=z do
      begin
        k+=inc;
        y+=1;
        inc-=1;
      end;
    while k<z do
    begin
      x-=1;
      y+=1;
      k+=1;
    end;
    writeln(y,' ',x);
  end;
  
  
end.