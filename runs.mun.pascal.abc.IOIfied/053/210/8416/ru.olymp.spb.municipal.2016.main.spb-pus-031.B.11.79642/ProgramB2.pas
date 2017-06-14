var n, p, q, d, l, t,i,j,h: int64;
     su : array of int64;

function check(a,b:int64):boolean;
var j:integer;
begin
for j:=2 to min(a,b) do
if (a mod j = 0) and (b mod j = 0) then begin check:=false; exit; end;
check:=true;
end;
 
begin
 readln(n,p,q);
  
 t := 0;
 
 for d:=1 to n do
 for l:=floor(d/p)+1 to ceil(d/q)-1 do
 begin
 if check(l,d) = true then begin
 t+=2;
  SetLength(su,t);
 
 j:=0;
 if t=2 then begin su[0]:=l; su[1]:=d; end else
                                while j<=t-2 do
                               begin
                                if (l*su[j+1]<d*su[j]) or (j=t-2) then begin
                                                                                                                  for h:=t-2 downto j+2 do
                                                                                                                  begin
                                                                                                                    su[h+1]:=su[h-1];
                                                                                                                    su[h]:=su[h-2];
                                                                                                                    end;
                                                                                                                  su[j]:=l; su[j+1]:=d;
                                                                                                                  break; 
                                                                                                               end;
                                j+=2;
                              end; 
  

  end;
 end;
  
 i := 0;
 while i<=t-1 do
 begin
  writeln(su[i],'/',su[i+1]);
  i+=2;
end;
 
end.