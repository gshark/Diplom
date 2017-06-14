program ZadachaC;

var n: longint;

begin
	read(n);
	if n=1 then writeln('a');
	if n=2 then
	begin
		writeln('ab');
		writeln('ba');
	end;
	if n=3 then
	begin
		writeln('aba');
		writeln('bab');
		writeln('aba');
	end;
	if n=4 then
	begin
		writeln('abba');
		writeln('baab');
		writeln('baab');
		writeln('abba');
	end;
	if n=5 then
	begin
		writeln('abcba');
		writeln('babab');
		writeln('cbabc');
		writeln('babab');
		writeln('abcba');
	end;
	if n=6 then
	begin
		writeln('abccba');
		writeln('babbab');
		writeln('cbaabc');
		writeln('cbaabc');
		writeln('babbab');
		writeln('abccba');
	end;
end.
