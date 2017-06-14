program a;
var h,r,n,k,m,i:integer;
begin
   r:=0;
   readln(n);
   if (n < 1) or (n > 10) then 
      readln(n);
   readln(k);
   if (k < 2) or (k > 1000) then 
      readln(k);
   for i:=1 to n do 
      begin 
         n:=0;
         for h:=1 to n do
            begin
               m:=n*(n-h);
               n:=n+m     
            end ;
         if (n mod k) = 0 then 
            r:=r+1;
      end;
   writeln(r);
end.
   
   
      
   
      
   