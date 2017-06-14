program TaskA;
var a,i,k :longint;
begin
	read(a);
	k := 0;
	for i := 1 to 9 do
		if (a mod 10) = 0 then a := a div 10
		else break;
	while a <> 0 do
	begin
		if (a mod 10) = 0 then inc(k);
		a := a div 10;
	end;
	writeln(k);
end.
