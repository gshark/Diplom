program olymp;
var s:string;
var	a,k,i,d:longint;
begin
	k:=0;
	read(s);
	a:=length(s);
	for i:=2 to a do begin
		if (s[i]='0') then 
			begin
				for d:=i+1 to a do begin
					if s[d]>'0' then begin
						inc(k);	
						break;
						end;
				end;
			end;
	end;
	writeln(k);
end.
