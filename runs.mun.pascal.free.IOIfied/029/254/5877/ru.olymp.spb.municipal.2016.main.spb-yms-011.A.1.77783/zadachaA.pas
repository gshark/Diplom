program ZadachaA;

var k, n: longint;

begin
	read(k);
	n:=0;
	while (k mod 10) = 0 do
		k:=(k div 10);
	while (k div 10)<>0 do
	begin
		if (k mod 10) = 0 then n:=n+1;
		k:=(k div 10);
	end;
	writeln(n);
end.
