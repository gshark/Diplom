var n, p, q, i, t: int64;
     su : array of int64;

procedure rec(a,b,c,d:int64);
var j, h: integer;
begin
 if b+d < n then begin
                                 if ((a+c)*p > (b+d)) and ((a+c)*q < (b+d)) then begin
                                 t+=2;
                                SetLength(su,t);
                                j:=0;
                                if t=2 then begin su[0]:=a+c; su[1]:=b+d; end else
                                while j<=t-2 do
                               begin
                                if ((a+c)*su[j+1]<(b+d)*su[j]) or (j=t-2) then begin 
                                                                                                                  for h:=t-2 downto j+2 do
                                                                                                                  begin
                                                                                                                    su[h+1]:=su[h-1];
                                                                                                                    su[h]:=su[h-2];
                                                                                                                    end;
                                                                                                                  su[j]:=a+c; su[j+1]:=b+d;
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
 while i<=t-1 do
 begin
  writeln(su[i],'/',su[i+1]);
  i+=2;
end;

end.