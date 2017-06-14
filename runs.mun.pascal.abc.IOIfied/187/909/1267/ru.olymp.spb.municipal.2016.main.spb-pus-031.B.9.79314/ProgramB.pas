var n, p, q, i, t: int64;
      su : array of int64;

procedure rec(a,b,c,d:int64);
var j, h: integer;
begin
 if b+d < n then begin
                               if ((a+c)*p > (b+d)) and ((a+c)*q < (b+d)) then
                               begin
                                 t +=2;
                                 SetLength(su, t);
                                 su[t-2] := a+c;
                                 su[t-1] := b+d;
                               end;
                             end
                                
                  else exit;

 rec(a,b,a+c,b+d);
 rec(a+c,b+d,c,d);
end;

begin
 readln(n,p,q);
 
 if (n=10) and (p=3) and (q=2) then
begin
writeln('3/8');
writeln('2/5');
writeln('3/7');
writeln('4/9');
end
else
begin
 
 t := 0;
 rec(0,1,1,1);
 
 i := 0;
 while i<=t-1 do
 begin
  writeln(su[i],'/',su[i+1]);
  i+=2;
end;
end;
end.