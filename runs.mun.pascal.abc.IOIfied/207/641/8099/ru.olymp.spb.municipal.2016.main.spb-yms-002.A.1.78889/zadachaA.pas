program zadachaA;
var i,kras,n:longint;
k:string;
begin
	read(k);
	kras:=0;
	n:=0;
	for i:=length(k) downto 1 do
	begin 
		if n=1 then
		begin
			if k[i]='0' then
				kras:=kras+1;
		end
		else
			if k[i]<>'0' then
				n:=1;
	end;
	writeln(kras);
end.		
