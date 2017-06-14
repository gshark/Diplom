program olymp2;
var p,q,i,n:longint;
begin
	i:=2;
	read(n,p,q);
	while i<n do begin
		if (n>p) and (i>1) and (n<q) then
			begin
				write(i);
				write('/');
				write(n);
				writeln();
				inc(i);
			end
		else
			inc(i);	
	end;
end.
