program Olymp;

var n,p,q,i,j,ci,cj:longint;
	arri:array[1..100] of longint;
	arrj:array[1..100] of longint;

begin
	read(n);
	read(p);
	read(q);
	for i:=1 to 100 do begin
		arri[i]:=0;
		arrj[i]:=0;
	end;	
	for i:=p to n-1 do begin
		for j:=1 to n-1 do begin
			if (i mod j > 0) then begin
				if (j/i>1/p) and (j/i<1/q) then begin
					writeln(j,'/',i);
					arri[i]:=i;
					arrj[i]:=j;
				end;	
			end;		
		end;
	end;
	writeln();
	for i:=1 to n-1 do begin
		//if (arrj[i]>0) and (arri[i]>0) then begin
			if (arrj[i]/arri[i]>arrj[i+1]/arri[i+1]) then begin
				ci:=arri[i+1];
				cj:=arrj[i+1];
				arri[i+1]:=arri[i];
				arrj[i+1]:=arri[i];
				arri[i]:=ci;
				arrj[i]:=cj;
			end;					
		//end;		
	end;
	for i:=1 to n do begin
		if (arrj[i]>0) and (arri[i]>0) then
			writeln(arrj[i],'/',arri[i]);
	end;		
end.					
