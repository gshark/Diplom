program drob;
var n,p,q,j,i,z,x,m,e : longint;
	u:array [1..2] of longint;
	a : array [1..100] of longint;
	b : array [1..100] of longint;
begin
	read(n,p,q);
	x:=0;
	m:=1;
	u[1]:=1;
	u[2]:=1;
	for i:=1 to 100 do begin
		for j:=1 to n do begin
			if (i*q<j) and (i*p>j) then begin
				for z:=2 to j do 
					if (i mod z = 0) and (j mod z = 0) then  
						x:=1;
			if (x<>1) then begin
				a[m]:=i;
				b[m]:=j;
				inc(m);
			end;
			end;
		end;
	end;
	for j:=1 to m-1 do begin
		for i:=1 to m-1 do begin
			if (a[i]<>0) and (b[i]<>0) then
				if (a[i]*u[2]<b[i]*u[1]) then begin
					u[1]:=a[i];
					u[2]:=b[i];
					e:=i;
				end;
		end;	
		writeln(u[1],'/',u[2]);
		a[e]:=0;
		b[e]:=0; 
		u[1]:=1;
		u[2]:=1;
		end;	
end.
