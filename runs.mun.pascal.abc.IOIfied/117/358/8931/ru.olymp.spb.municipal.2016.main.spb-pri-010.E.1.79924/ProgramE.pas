program E;
var r,c,q,i,j,v,g,v1,g1,z: integer;
   a: array [1..100,1..100] of integer;
begin
   readln(r,c,q);
   for i:=1 to c do
      for j:=1 to r do
      readln(a[i,j]);
   v1:=2;
   g1:=2;
   v:=v1;
   g:=g1-1;
   write(1,1);
   writeln;
   for z:=1 to q do begin 
         write(g,v);
         if (v=1) and (v1<>c) then begin
            v1:=v1+1;
            v:=v1;
         end;   
         if v<>1 then v:=v-1; 
         if (g=g1) and (g1<>r) then begin
            g1:=g1+1;
            g:=1;
         end;
         if (g<>g1) then g:=g+1;
         if (g1=r) and (g=g1) then g:=1;
         writeln;   
   end;            
end.   