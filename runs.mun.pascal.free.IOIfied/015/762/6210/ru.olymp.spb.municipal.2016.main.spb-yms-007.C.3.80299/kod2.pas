program kod;
var s:array[1..100,1..100] of char;
i,j,n,k:longint;
begin
	read(n);
	for i:=1 to n do begin
		for j:=1 to n do begin
			s[i,j]:='0';
		end;
	end;
	for i:=1 to n do begin
		for j:=1 to n do begin
			s[i,i]:='a';
		end;
	end;
	for i:=1 to n do begin
		for j:=n downto 1 do begin
			s[i,n-i+1]:='a';
		end;
	end;
	FOR I:=1 TO N DO BEGIN
		 for j:=1 to n do begin
			if s[i,j]='a' then begin
				for k:=1 to n do begin
					if s[i,j+k]<>'a' then s[i,j+k]:=Chr(Ord('a')+k);
				end;
			end;
		end;
	end;
				
		for j:=2 to n div 2 do begin
			s[1,n-j+1]:=s[1,j];
		end;
		for j:=2 to n div 2 do begin
			s[n,n-j+1]:=s[n,j];
		end;
	for i:=2 to n-1 do begin
		for j:=1 to n do begin
			s[i,j]:=s[i,n-j+1];
		end;
	end;
			
	for i:=1 to n do begin
		for j:=1 to n do begin
			if s[i,j]='a' then s[i,j+1]:='b';
		end;
	end;
	
	for i:=1 to n do begin
		for j:=1 to n do begin
			write(s[i,j]);
		end;
	writeln();
	end;
end.
