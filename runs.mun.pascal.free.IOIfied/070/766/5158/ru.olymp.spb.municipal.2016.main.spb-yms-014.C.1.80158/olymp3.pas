program olymp3;
var a:array[1..100,1..100] of string;
i,j,n:longint;
begin
	read(n);
	for i:=1 to n do begin
		for j:=1 to n do begin
			a[i,j]:=chr(i-j);
		end;
	end;
	for i:=1 to n do begin
		for j:=1 to n do begin
			write(a[i,j]);
		end;
		writeln();
	end;
end.
			
				
