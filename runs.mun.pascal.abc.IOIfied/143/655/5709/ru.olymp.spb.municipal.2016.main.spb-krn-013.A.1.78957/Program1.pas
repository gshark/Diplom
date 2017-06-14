var
k:longint;
t,b:byte;
f:boolean;
begin
read(k);
f:=false;
while k<>0 do begin 
              b:=k mod 10;
              k:=k div 10;
              if (b<>0) and (f=false) then f:=true
                                      else if (b=0) and (f=true) then inc(t);
              end;
writeln(t);
end.