program zero;
var a:string;
i,k,s: longint;
n: array [1..10^9] of longint;
begin
	read(a);
	
	k:=0;
	s:=1;
	
	for i:=1 to length(a) do
		if (a[i]<>'0') then
		begin
			n[s]:=i;
			inc(s);
		end;
	
	for i:=1 to length(a) do
		if ((a[i]='0') and ((i>n[1]) and (i<n[s]))) then
			inc(k);
			
	writeln(k);
end.
		
		
		
	
