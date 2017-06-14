var a: Array[1..11] of integer;
var i, j, n, k, min, max, p: integer;
var sum: longint;

begin
	read(n, k);
	p:=0;
	for i := 1 to (n+1) div 2 do begin
		a[i+p] :=  n-i+1;
		a[i+p+1] := i;
		p:=p+1;
	end;
	p:=0;
	min:=0;
	for i:=2 to n do begin
		min := min + a[i]* a[i-1];
	end;
	for i := 1 to n do begin
		a[i] := i;
	end;
	max:=0;
	for i:=2 to n do begin
		max := max + a[i]* a[i-1];
	end;
	writeln((max-min+k-1) div k); 
end.
