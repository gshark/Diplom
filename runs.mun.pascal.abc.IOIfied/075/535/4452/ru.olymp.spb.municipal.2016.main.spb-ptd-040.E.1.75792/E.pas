var a,b,c,d,i,j,f,l,s,t:integer ;  
begin 
read(a,b,c);
for i:= 1 to c do read(s);
j:=1; l:=1; t:=1; writeln(1,1); 
for i:= 1 to c-1 do 
begin if j=t then 
 begin l:=l+1; J:= 1; t:=t+1 ; writeln(j,l); d:=9 ;if t=b then t:=t-1; 
 end ;
   if j<t  then begin J:=J+1 ; if d<>9 then writeln (j,l) ; end; d:=0;
 end ; end.
