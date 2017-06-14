Program a;
  var k, c, p, l, i, kr, m: integer;
  begin
    readln (k);
    i:=1;
    p:=1;
    c:=0;
    repeat
      i:=i*10;
      if k div i=0 then c:=p;
      p:=p+1;
    until c<>0;
    for m:=1 to c do if k mod 10 = 0 then k:=k div 10;
    i:=1;
    p:=1;
    c:=0;
    repeat
      i:=i*10;
      if k div i=0 then c:=p;
      p:=p+1;
    until c<>0;
    for l:=1 to c do
    begin
    if (k mod i)div(i div 10)=0 then kr:=kr+1;
    i:=i div 10;
    end;
    writeln (kr);
end.