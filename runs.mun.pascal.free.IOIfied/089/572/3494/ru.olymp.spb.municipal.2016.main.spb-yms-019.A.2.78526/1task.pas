program prog;
var a, k: longint;
begin
	k:=0;
	readln(a);
	while a <> 0 do
	begin
	a:= a div 10;
	if (a mod 10) = 0 then
		k:=k+1
	else
		k:=k-1;
	if k<0 then 
		k:=k-k*2;
	end;
	writeln(k);
end.
	
	
