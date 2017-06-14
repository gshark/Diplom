var
	n, p, q, j, i, l:longint;
	k1, k2, k3:double;
	h:boolean;
begin
	read(n, p, q);
	k1:=1/p;
	k2:=1/q;
	for i:=1 to n do
		for j:=1 to i do
		begin
			h:=true;	
			k3:=j/i;
			if (k3>k1) and (k3<k2) and (i mod j<>0) then
			begin
				for l:=2 to i do
					if (i mod l=0) and (j mod l=0) then h:=false;
				if h then writeln(j,'/',i);
			end;
		end;
end.
