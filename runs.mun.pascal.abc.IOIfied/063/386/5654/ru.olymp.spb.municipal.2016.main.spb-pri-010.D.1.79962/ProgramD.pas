program D;
var n,k,i,count,s,m: integer;
   a: array [1..10] of integer;
begin
   readln(n,k);
   m:=n;
   repeat
      for i:=1 to m do begin
         a[i]:=i;
         write (a[i],' ');
         if s mod k=0 then count:=count+1;
      end;
      m:=m-1;
      writeln;
      until m=0;
end.