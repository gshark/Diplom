program a2;
var
    i,ta,an:integer;

begin

    readln(ta);
    while (ta mod 10 = 0)
    do
      if(ta mod 10 = 0)
          then ta := ta div 10;



    while (ta>0)
    do
     begin
      if(ta mod 10 = 0)
            then   i:=i+1;
      ta:=ta div 10;
     end;
    writeln(i);
end.