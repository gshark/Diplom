var
	a:string;
	k, i, n:longint;
begin
	read(a);
	k:=length(a);
	while a[k]='0' do
		k:=k-1;
	n:=0;
	for i:=1 to k do
		if a[i]='0' then n:=n+1;
	writeln(n);
end.
