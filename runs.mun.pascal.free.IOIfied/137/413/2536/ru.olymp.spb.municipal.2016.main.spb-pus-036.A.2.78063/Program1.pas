var
   z:string;
   x,p,i,r,y,o:integer;
BEGIN
     read(z);
     x:=length(z);
     y:=x;
     r:=0;
     o:=0;
     for p:=1 to x do
         begin
              if z[i] = '0' then
                 begin
                      r:=r+1;
                      i:=i+1;
                 end
              else
              if z[i]<>'0' then
                 i:=i+1;
              if z[y]='0' then
                 begin
                      y:=y-1;
                      o:=o+1;
                 end
              else
              if z[x]<>'0' then
                 o:=o+0;
         end;
     writeln(r-o);
END.