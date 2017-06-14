var a: Array[1..11] of integer;
var i, j, n, k, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, p: integer;
var sum: longint;

begin
	read(n, k);
	p:= 0;
	if(n=1) then begin
		for a1 := 1 to n do begin
			if(a1 mod k = 0) then p := p + 1;
		end;
	end;
	if(n=2) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				if((a1*a2) mod k = 0) and (a1 <> a2) then p := p + 1;
			end;
		end;
	end;
	if(n=3) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					if((a1*a2+a2*a3) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) then p := p + 1;
				end;
			end;
		end;
	end;
	if(n=4) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						if((a1*a2+a2*a3+a3*a4) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) then p := p + 1;
					end;
				end;
			end;
		end;
	end;
	if(n=5) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							if((a1*a2+a2*a3+a3*a4+a4*a5) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) then p := p + 1;
						end;
					end;
				end;
			end;
		end;
	end;
	writeln(p);
end.
