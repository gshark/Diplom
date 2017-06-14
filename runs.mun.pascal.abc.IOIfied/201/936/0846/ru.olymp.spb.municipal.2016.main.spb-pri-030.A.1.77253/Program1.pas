program a2;
var task,ans: text;
    i,ta,an:integer;

begin
    read(ta);
    while (ta mod 10 = 0)
    do
      if(ta mod 10 = 0)
          then ta := ta div 10;

    writeln(ta);

    while (ta>0)
    do
     begin
      if(ta mod 10 = 0)
            then   i:=i+1;
      ta:=ta div 10;
     end;
    writeln(i);

    


end.


