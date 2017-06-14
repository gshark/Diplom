program prog;
var a, k: longint;
begin
	k:=0;
	readln(a);
	while a <> 0 do
	begin
	a:= a div 10;
	if (a mod 10) = 0 then
		k:=k+1;
	end;
	writeln(k);
end.
	
	
