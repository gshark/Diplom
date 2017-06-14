program olymp2;
var i,p,q,n:longint;
begin
	read(n,p,q);
	for i:=2 to n-1 do begin
		if (i*p>n) and (i*q<n) then begin
			write(i);
			write('/');
			write(n);
			writeln();
		end;
	end;
end.
