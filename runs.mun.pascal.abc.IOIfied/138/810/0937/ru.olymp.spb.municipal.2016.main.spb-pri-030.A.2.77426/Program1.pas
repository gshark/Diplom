program a2;
var task,ans: text;
    i,ta,an:integer;

begin
     assign(task,'input.txt');
     assign(ans,'output.txt');
     reset(task);
    read(task, ta);
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
    close(task);
    rewrite(ans);
    writeln(ans,i);
    close(ans);

    


end.


