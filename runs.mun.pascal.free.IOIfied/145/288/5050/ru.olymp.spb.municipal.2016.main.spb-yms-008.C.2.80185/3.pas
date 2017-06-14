program per;
var n : longint;

begin
	read(n);
	if n=1 then writeln('a');
	if n=2 then begin 
		writeln('aa');
		writeln('aa');
	end;	
	if n=3 then begin 
		writeln('aba');
		writeln('bab');
		writeln('aba');
	end;	
	if n=4 then begin 
		writeln('abba');
		writeln('baab');
		writeln('baab');
		writeln('abba');
	end;
		
		
end.
