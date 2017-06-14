

program untitled;


var i,krass,n :longint;
k:string;
BEGIN
	read(k);
	krass:=0;
	n:=0;
	  for i:=length(k) downto 1 do 
	  begin
	if n=1 then begin 
	if k[i]= '0' then
	krass:= krass+1;
	end 
	else 
	if k[i]<> '0' then
	n:=1;
end;
writeln(krass);
end.
