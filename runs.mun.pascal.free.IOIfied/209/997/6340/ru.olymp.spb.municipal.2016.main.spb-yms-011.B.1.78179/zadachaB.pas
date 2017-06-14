program ZadachaB;

var n, p, q, i, j, m, k: longint;

begin
	read(n);
	read(p);
	read(q);
	for i:=1 to n do
	begin
		m:=0;
		for j:=1 to 100*n do
			if ((1/p)<(j/i)) and ((1/q)>(j/i)) then
			begin
				for k:=2 to j do
				if (j mod k =0) and (i mod k =0) then m:=1;
					if m <> 1 then writeln(j, '/', i);
			end
	end;
end.
