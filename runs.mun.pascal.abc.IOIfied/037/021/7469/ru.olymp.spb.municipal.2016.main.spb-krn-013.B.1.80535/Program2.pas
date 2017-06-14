var
f:array[1..10000,1..2] of byte;
n,p,q,t,y,x,l:byte;
i:boolean;
f1:real;
begin
read(n,p,q);
t:=0;
for y:=2 to n do for x:=1 to n-1 do begin
                                    i:=true;
                                    for l:=2 to n do if (x mod l=0) and (y mod l=0) then i:=false;
                                    if i=true then begin
                                                   f1:=x/y;
                                                   if (1/p<f1) and (f1<1/q) then begin
                                                                               inc(t);
                                                                               f[t,1]:=x;
                                                                               f[t,2]:=y;
                                                                               end;
                                                   end;
                                    end;
for y:=1 to t-1 do begin x:=y;
                        for l:=x+1 to t do if f[l,1]/f[l,2]<f[x,1]/f[x,2] then begin q:=f[x,1]; f[x,1]:=f[l,1]; f[l,1]:=q; q:=f[x,2]; f[x,2]:=f[l,2]; f[l,2]:=q;
                        
                        
                        end;
                     end;
                                   
                                   
 for y:=1 to t do writeln(f[y,1],'/',f[y,2]);
                                  



end.