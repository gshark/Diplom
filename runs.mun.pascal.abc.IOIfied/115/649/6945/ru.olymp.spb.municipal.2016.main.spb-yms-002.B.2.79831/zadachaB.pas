program zadachaB;
const l=100;
var i,p,q,n,j,t,k,kol,koor1,koor2:longint;
min:real;
drobi:array [1..l,1..l] of longint;
begin
	read(n,p,q);
	kol:=0;
	for i:=1 to n do
		for j:=1 to n do
			drobi[i,j]:=0;
	for i:=q+1 to n do
	begin
		for j:=1 to i-1 do
		begin
			k:=0;
			for t:=2 to i do
				if (j mod t=0) and (i mod t=0) then
					k:=1;
			if k=0 then
				if (1/p<j/i) and (j/i<1/q) then
				begin
					drobi[i,j]:=1;
					kol:=kol+1;
				end;
		end;
	end;
	while kol<>0 do
		if kol<>0 then
		begin
			min:=0;
			koor1:=0;
			koor2:=0;
			for i:=1 to n do
				for j:=1 to n do
					if drobi[i,j]=1 then
					begin
						if min=0 then
						begin
							min:=j/i;
							koor1:=i;
							koor2:=j;
						end
						else
							if min>j/i then
						begin
							min:=j/i;
							koor1:=i;
							koor2:=j;
						end;
					end;
			writeln(koor2,'/',koor1);
			drobi[koor1,koor2]:=0;
			kol:=kol-1;
		end;	
end.
