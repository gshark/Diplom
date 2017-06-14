type arr = array [1..10] of boolean;
function rec(n,k,sum,previ:integer;a:arr):integer;
var i,o: integer;
f:boolean;
begin
    o:=0;
    f:=true;
    for i:= 1 to n do
        if a[i] then
        begin
           f:=false;
           a[i]:=false;
           o:=o+rec(n,k,sum+i*previ,i,a);
           a[i]:=true;
        end;
    if(f) and (sum mod k = 0) then
          o:=o+1;
    rec:=o;

end;


var n,k,i:integer;
a:arr;
begin
     readln(n,k);
     for i:=1 to n do a[i]:=true;
     writeln(rec(n,k,0,0,a));
end.