  var
k,k2,i,j,count:integer;
noend:boolean;

begin
k:=0;
k2:=0;
count:=0;

readln(k);
k2:=k;
//
repeat
if k2 mod 10=0 then k2:=k2 div 10 else noend:=true;
until noend=true;
//

repeat
if k2 mod 10=0 then count:=count+1;
k2:=k2 div 10;
until k2<10;
writeln(count);
end.
