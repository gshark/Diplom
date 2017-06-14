program zadachaB;
var i,p,q,n,j,t,k:longint;

BEGIN
	read(n,p,q);
	
	for i:=q+1 to n do 
	begin 
		for j:= 1 to i-1 do 
           begin 
           k:=0;
             for t:=2 to i do
               if (j mod t=0) and (i mod t=0) then
                 k:=1;
               if k=0 then
  if (1/p<j/p) and (j/i<1/q) then
   writeln(j,'/',i);
       end;
    end; 
end.

