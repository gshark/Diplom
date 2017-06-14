program olymp;
var s:string;
var	a,k,i,d:longint;
begin
	k:=0;
	read(s);
	a:=length(s);
	for i:=2 to length(s) do begin
		if (s[i]=0) and (s[i-1]>0) then 
			begin
				for d:=i+1 to a do begin
					if s(d)>0 then begin
						d:=a;
						k:=k+1;		
						end	
					else
						if d=a then
							i:=a;
				end;
			end;
	end;
	writeln(k);
end.
