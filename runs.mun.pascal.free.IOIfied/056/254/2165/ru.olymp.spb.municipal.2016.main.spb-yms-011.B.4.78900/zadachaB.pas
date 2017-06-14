program ZadachaB;

var n, p, q, i, j, k, l: longint;
	a: array [1..100] of longint;
	b: array [1..100] of longint;
	m: real;

begin
	read(n);
	read(p);
	read(q);
	l:=1;
	for i:=n downto 1 do
	begin
		m:=0;
		for j:=1 to 100*n do
			if ((1/p)<(j/i)) and ((1/q)>(j/i)) then
			begin
				for k:=2 to j do
				if (j mod k =0) and (i mod k =0) then m:=1;
					if m <> 1 then
					begin
						a[l]:=j;
						b[l]:=i;
						l:=l+1;
					end;
			end;
	end;
	n:=0;
	for i:=1 to l-1 do
	begin
		m:=100;
		for j:=1 to l-1 do
		begin
			if (m>a[j]/b[j]) and (a[j]<>0) then
			begin
				m:=a[j]/b[j];
				n:=j;
			end;
		end;
		if a[n]<>0 then writeln(a[n], '/', b[n]);
		a[n]:=0;
	end;
end.
