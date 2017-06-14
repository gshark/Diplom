    uses
    crt;
    var k,a, s:integer;
    begin
        readln(k);
          while k mod 10 = 0  do
      k:=k div 10;
      while k>0 do
      begin
      a:=k mod 10;
      if a= 0 then s:=s+1;
      k:=k div 10;
      end;
       writeln(s)

    end.
