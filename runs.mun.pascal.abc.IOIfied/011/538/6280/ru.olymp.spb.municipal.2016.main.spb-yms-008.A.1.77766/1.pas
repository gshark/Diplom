program nyl;
var k,nal :longint;
begin
	read(k);
	nal:=0;
	while k mod 10 = 0 do begin
		k:= k div 10;
	end;
	while k<> 0 do begin
		if (k mod 10 = 0) then
			nal:=nal +1;
		k:=k div 10;
	end;
	writeln(nal);
	


end.
