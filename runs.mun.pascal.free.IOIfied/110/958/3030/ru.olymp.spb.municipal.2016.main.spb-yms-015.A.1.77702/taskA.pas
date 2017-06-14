program something;

var
	k, count : longint;
	last : boolean;
	
begin
	read(k);
	last := TRUE;
	count := 0;
	
	while(k*10 <> 0) do begin
		if (k mod 10 = 0) and not last then
			inc(count);
		if k mod 10 <> 0 then
			last := FALSE;
			
		k := k div 10;
	end;

	write(count);
end.
