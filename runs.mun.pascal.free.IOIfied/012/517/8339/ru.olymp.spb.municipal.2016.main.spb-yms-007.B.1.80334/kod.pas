program proga;
var n,p,q,j,i,ans3,ans4,t:longint;


begin
	read(n,p,q);
	for i:=1 to n-1 do begin
		for j:=1 to n-1 do begin
			if j mod i<>0 then begin
				if ((i/j>1/p) and (i/j<1/q)) then  begin
					writeln(i,'/',j);
				end;
			end;
		end;
	end;
	
end.
