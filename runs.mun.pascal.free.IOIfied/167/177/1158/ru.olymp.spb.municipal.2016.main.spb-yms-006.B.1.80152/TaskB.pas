program TaskB;
const len = 100;
var a,b :array [1..len,1..len] of longint;
n,p,q,i,j,ch,zn:longint;
p0,q0:double;
begin
	read(n);
	read(p);
	read(q);
	p0 := 1/p;
	q0 := 1/q;//б6ольше
	ch := 1;
	zn := 1;
	for i := 1 to n do
	begin
		for j := 1 to n do
		begin
			if (p0 < (ch/zn))  and  (ch<=zn)  then
			begin
				a[i][j] := ch;
				b[i][j] := zn;
			end;
			inc(zn);
		end;
		inc(ch);
	end;
	for i := 1 to n do
	begin
		for j := 1 to n do
			write(a[i][j],'/',b[i,j],' ');
		writeln();
	end;
end.
