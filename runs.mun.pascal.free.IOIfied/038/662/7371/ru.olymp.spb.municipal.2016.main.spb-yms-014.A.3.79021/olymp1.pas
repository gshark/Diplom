program olymp;
var s:string;
var	a,k,i,d:longint;
begin
	k:=1;
	read(s);
	a:=length(s);
	for i:=2 to a do begin
		if ((s[i]='0') and (s[i-1]>'0')) then 
			begin
				for d:=i+1 to a do begin
					if s[d]>'0' then begin
						k:=k+1;	
						break;	
						end;
				end;
			end;
	end;
	writeln(k);
end.
