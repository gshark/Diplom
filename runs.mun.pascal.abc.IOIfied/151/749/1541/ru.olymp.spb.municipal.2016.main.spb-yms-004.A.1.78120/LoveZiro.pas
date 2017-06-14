program LoveZiro;

var k,n,a:longint;

begin
	read(k);
	n:=0;
	a:=0;
	while k>0 do begin
		if (k mod 10 >0) then
			a:=1;
		if(a=1) and (k mod 10=0) then
			n:=n+1;
		k:=k div 10;			
	end;
	writeln(n);
end.			
		 
			
