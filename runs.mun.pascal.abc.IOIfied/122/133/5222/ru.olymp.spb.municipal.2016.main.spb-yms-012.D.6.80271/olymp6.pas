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
	if(n=6) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							for a6 := 1 to n do begin
								if((a1*a2+a2*a3+a3*a4+a4*a5+a5*a6) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) and (a6<> a5) and (a6 <> a4) and (a6 <> a3) and (a6<>a2) and (a6<>a1) then p := p + 1;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if(n=7) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							for a6 := 1 to n do begin
								for a7 := 1 to n do begin
									if((a1*a2+a2*a3+a3*a4+a4*a5+a5*a6+a6*a7) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) and (a6<> a5) and (a6 <> a4) and (a6 <> a3) and (a6<>a2) and (a6<>a1)  and (a7<>a1) and (a7<>a2) and (a7<>a3) and (a7<>a4) and (a7<>a5) and (a7<>a6) then p := p + 1;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if(n=8) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							for a6 := 1 to n do begin
								for a7 := 1 to n do begin
									for a8 := 1 to n do begin
										if((a1*a2+a2*a3+a3*a4+a4*a5+a5*a6+a6*a7+a7*a8) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) and (a6<> a5) and (a6 <> a4) and (a6 <> a3) and (a6<>a2) and (a6<>a1)  and (a7<>a1) and (a7<>a2) and (a7<>a3) and (a7<>a4) and (a7<>a5) and (a7<>a6) and (a8 <> a7) and (a8 <> a6) and (a8 <> a5) and (a8 <> a4) and (a8 <> a3) and (a8 <> a2) and (a8 <> a1) then p := p + 1;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if(n=9) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							for a6 := 1 to n do begin
								for a7 := 1 to n do begin
									for a8 := 1 to n do begin
										for a9 := 1 to n do begin
											if((a1*a2+a2*a3+a3*a4+a4*a5+a5*a6+a6*a7+a7*a8+a8*a9) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) and (a6<> a5) and (a6 <> a4) and (a6 <> a3) and (a6<>a2) and (a6<>a1)  and (a7<>a1) and (a7<>a2) and (a7<>a3) and (a7<>a4) and (a7<>a5) and (a7<>a6) and (a8 <> a7) and (a8 <> a6) and (a8 <> a5) and (a8 <> a4) and (a8 <> a3) and (a8 <> a2) and (a8 <> a1) and (a9 <> a8) and (a9 <> a7) and (a9 <> a6) and (a9 <> a5) and (a9 <> a4) and (a9 <> a3) and (a9 <> a2) and (a9 <> a1)       then p := p + 1;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	if(n=10) then begin
		for a1 := 1 to n do begin
			for a2 := 1 to n do begin
				for a3 := 1 to n do begin
					for a4 := 1 to n do begin
						for a5 := 1 to n do begin
							for a6 := 1 to n do begin
								for a7 := 1 to n do begin
									for a8 := 1 to n do begin
										for a9 := 1 to n do begin
											for a10 := 1 to n do begin
												if((a1*a2+a2*a3+a3*a4+a4*a5+a5*a6+a6*a7+a7*a8+a8*a9+a9*a10) mod k = 0) and (a1 <> a2) and (a2 <> a3) and (a3 <> a1) and (a4<> a3) and (a4 <> a1) and (a4 <> a2) and (a5 <> a4) and (a5 <> a3) and (a5 <> a2) and (a5 <> a1) and (a6<> a5) and (a6 <> a4) and (a6 <> a3) and (a6<>a2) and (a6<>a1)  and (a7<>a1) and (a7<>a2) and (a7<>a3) and (a7<>a4) and (a7<>a5) and (a7<>a6) and (a8 <> a7) and (a8 <> a6) and (a8 <> a5) and (a8 <> a4) and (a8 <> a3) and (a8 <> a2) and (a8 <> a1) and (a9 <> a8) and (a9 <> a7) and (a9 <> a6) and (a9 <> a5) and (a9 <> a4) and (a9 <> a3) and (a9 <> a2) and (a9 <> a1) and(a10 <> a9) and(a10 <> a8) and(a10 <> a7) and(a10 <> a6) and(a10 <> a5) and(a10 <> a4) and(a10 <> a3) and(a10 <> a2) and(a10 <> a1) then p := p + 1;
											end;
										end;
									end;
								end;
							end;
						end;
					end;
				end;
			end;
		end;
	end;
	writeln(p);
end.
