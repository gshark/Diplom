var n, n1, i, k: longint;

begin
	read(n);
	k := 0;
	while(n mod 10 = 0) do begin
		n := n div 10;
	end;
	while(n <> 0) do begin
		if(n mod 10 = 0) then k := k + 1;
		n := n div 10;
	end;
	writeln(k);
end.
