program olymp3;
var a:array[1..100,1..100] of string;
i,j,n:longint;
begin
	read(n);
	for i:=1 to n do begin
		for j:=1 to n do begin
			if i>j then
				a[i,j]:=chr(i-j+96)
			else
				if j>i then
				a[i,j]:=chr(j-i+96)
			else
				if i=j then
					a[i,j]:=chr(97);
		end;
	end;
	for i:=1 to n do begin
		for j:=1 to n do begin
			write(a[i,j]);
		end;
		writeln();
	end;
end.
			
				
