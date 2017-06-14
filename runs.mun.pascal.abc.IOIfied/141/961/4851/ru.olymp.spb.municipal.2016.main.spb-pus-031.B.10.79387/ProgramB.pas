var n, p, q, i, t: int64;
     su : array[1..100*2*100] of integer;
 
procedure rec(a,b,c,d:int64);
var j, h: integer;
begin
 if b+d < n then begin
                                 if ((a+c)*p > (b+d)) and ((a+c)*q < (b+d)) then begin
                                 t+=2;
                                j:=0;
                                if t=2 then begin su[1]:=a+c; su[2]:=b+d; end else
                                while j<=t-2 do
                               begin
                                if ((a+c)*su[j+2]<(b+d)*su[j+1]) or (j=t-2) then begin
                                                                                                                  for h:=t-2 downto j+2 do
                                                                                                                  begin
                                                                                                                    su[h+2]:=su[h];
                                                                                                                    su[h+1]:=su[h-1];
                                                                                                                    end;
                                                                                                                  su[j+1]:=a+c; su[j+2]:=b+d;
                                                                                                                  break; 
                                                                                                               end;
                                j+=2;
                              end;                             
                             end;
                             end
                  else exit;
 
 rec(a,b,a+c,b+d);
 rec(a+c,b+d,c,d);
end;
 
begin
 readln(n,p,q);
 
 t := 0;
 rec(0,1,1,1);

 i := 0;
 while i<100*100*2-2 do
 begin
  if su[i+1]=0 then break
  else writeln(su[i+1],'/',su[i+2]);
  i+=2;
end;
end.