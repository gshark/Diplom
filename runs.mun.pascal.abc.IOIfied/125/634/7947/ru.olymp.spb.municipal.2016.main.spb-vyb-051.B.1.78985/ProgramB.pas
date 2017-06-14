    uses
    crt;
    var n,p,q, i, j,c,o:integer;
    begin
        readln(n,p,q);
      for i:= 2 to n do
      for j := 1 to n-1 do
      if (j/i< 1/q) and (j/i>1/p)
      then
      begin
      c:=0;
      for o:= 2 to n-1    do
      if (i mod o=0) and (j mod o=0)
      then    c:=c+1;
      if c=0
      then
      writeln(j,'/',i)
      end;

    end.
