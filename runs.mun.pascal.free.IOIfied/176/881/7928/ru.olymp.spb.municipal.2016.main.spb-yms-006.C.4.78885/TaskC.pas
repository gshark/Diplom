program TaskC;
const len = 100;
var a:array[1..len,1..len] of char;
i,n,j:longint;
begin
	read(n);
	for i := 1 to n do
		for j := 1 to n do
			a[i][j] := '0';
	for i := 1 to n do
		a[i][i] := 'a';
	for i := 1 to n do
		for j := 1 to n do
			if (i+j) = (n + 1) then a[i][j] := 'a';
	for i := 1 to n do
		for j := 1 to n do
			if a[i][j] <> '0' then
			begin
				if (a[i+1][j] = '0') or (a[i+1][j] > a[i][j]) then a[i+1][j] := succ(a[i][j]);
				if (a[i][j+1] = '0') or (a[i][j+1] > a[i][j]) then a[i][j+1] := succ(a[i][j]);
				if (a[i-1][j] = '0') or (a[i-1][j] > a[i][j]) then a[i-1][j] := succ(a[i][j]);
				if (a[i][j-1] = '0') or (a[i][j-1] > a[i][j]) then a[i][j-1] := succ(a[i][j]);
			end;
	for i := 1 to n do
	begin
		for j := 1 to n do
			write(a[i][j]);
		writeln();
	end;
end.
