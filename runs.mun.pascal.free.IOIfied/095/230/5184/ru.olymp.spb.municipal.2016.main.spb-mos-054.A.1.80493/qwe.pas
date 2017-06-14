program qwe;
var q,g,k,m,r,f,w:integer;
    a:integer;
begin
readln ( k );
a:=k;
k:=0;
for r:=1 to 10 do
begin
if a mod(10) = 0 then a:=a div (10);
if a = 1 then k:=0 else
if a = 0 then k:=0 else
begin
        for  q:=1 to 10 do
                if a mod(10) = 0
                then a:=a div(10);
        for q:=1 to 10 do
                if (a+q) mod(10) = 0
                then a:= a - 10 + q;
        a:=a div(10);
        repeat
                if a mod(10) = 0
                then
                        begin
                        f:=f+1;
                        a:= a div(10);
                        end
                        else a:= (a - (a mod(10))) div(10);
                        until a=0;
end;
end;
k:=f;
writeln (k);
readln ( )
end.