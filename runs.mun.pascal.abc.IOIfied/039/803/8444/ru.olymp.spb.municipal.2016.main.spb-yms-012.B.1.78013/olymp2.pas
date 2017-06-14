var ch: Array[1..100000] of longint;
var zn: Array[1..100000] of longint;
var n, p, q, k, i, j, j1, a, b: longint;
var flag: boolean;

begin
	k := 0;
	read(n, p, q);
	for i:= 1 to n do begin
		for j:=1 to i do begin
			flag := true;
			if(1/p < j/i) and (j/i < 1/q) then begin
				for j1 := 2 to n do begin
					if(i mod j1 = 0) and (j mod j1 = 0) then flag := false;
				end;
				if(flag) then begin
					k := k + 1;
					ch[k] := j;
					zn[k] := i;
				end;
			end;
		end;
	end;
	for i:= 1 to k do begin
		for j := i+1 to k do begin
			if(ch[i]/ zn[i] > ch[j] / zn[j]) then begin
				a:=ch[i];
				b:=zn[i];
				ch[i] := ch[j];
				zn[i] := zn[j];
				ch[j] := a;
				zn[j] := b;
			end;
		end;
	end;	
	for i := 1 to k do begin
		writeln(ch[i], '/', zn[i]);
	end;
end.
