var i, n, razn, k, j: longint;
var a: Array[1..101, 1..101] of char;
var c: char;

begin
	read(n);
	c:='a';
	for i := 1 to n do begin
		for j := 1 to n do begin
			a[i][j] := 'A';
		end;
	end;
	if((n<>2) and (n mod 2 = 0)) or (n = 1) then begin
		razn := (n+1) div 2;
		for i := 1 to razn do begin
			k:=i;
			for j := 1 to razn-i+1 do begin
				a[k][j] := c;
				a[j][k] := c;
				k:= k + 1;
			end;
			c:=Chr(ord(c)+1)
		end;
		for i := 1 to razn do begin
			for j := 1 to razn do begin
				a[razn+razn-i+1][j] := a[i][j];
				a[i][razn+razn-j+1] := a[i][j];
				a[2*razn-i+1][2*razn-j+1] := a[i][j];
			end;
		end;
	end;
	if(n = 2) then begin
		for i := 1 to n do begin
			k:=i;
			for j := 1 to n-i+1 do begin
				a[k][j] := c;
				a[j][k] := c;
				k:= k + 1;
			end;
			c:=Chr(ord(c)+1)
		end;
	end;
	if(n mod 2 = 1) and (n <> 1) then begin
		
		razn := (n+1) div 2;
		for i := 1 to razn do begin
			k:=i;
			for j := 1 to razn-i+1 do begin
				a[k][j] := c;
				a[j][k] := c;
				k:= k + 1;
			end;
			c:=Chr(ord(c)+1)
		end;
		
		for i := 1 to razn do begin
			for j := 1 to razn do begin
				a[razn+razn-i][j] := a[i][j];
				a[i][razn+razn-j] := a[i][j];
				a[2*razn-i][2*razn-j] := a[i][j];
			end;
		end;
	end;
	
	for i := 1 to n do begin
		for j := 1 to n do begin
			write(a[i][j]);
		end;
		writeln();
	end;
end.
