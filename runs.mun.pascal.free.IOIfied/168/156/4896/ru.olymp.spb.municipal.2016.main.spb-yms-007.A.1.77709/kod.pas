program proga;
var y,cnt,i,n:longint;
x:string;
begin
	read(x);
	n:=length(x);
	cnt:=0;
	y:=0;
	for i:=1 to n do begin
		if x[i]='0' then cnt:=cnt+1;
	end;
	i:=n;
	while i>0 do begin
		if x[i]='0' then y:=y+1;
		if x[i]<>'0' then break;
		i:=i-1;
	end;
	writeln(cnt-y);
end.
