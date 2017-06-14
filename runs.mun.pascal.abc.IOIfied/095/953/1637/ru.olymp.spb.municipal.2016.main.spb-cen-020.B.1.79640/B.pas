Program prB;
var 
 n,p,q,a,b,zn,i: integer;
begin
  readln(n,p,q); 
  zn := n*q*p;
  b := zn;
  a := zn div p;
  i := a div 2 +1;
   while (a< zn div q) do
   begin
   if (b mod a = 0) then
          begin
          b := b div a;
          a := 1;
          write(a);
          write('/');
          write(b);
          writeln();
          
          end
      else
          begin
          while (i>2) do
            begin
            
            if ((a mod i = 0) and (b mod i = 0)) then
            
            begin
            a := a div i;
            b := b div i;
            i := a div 2 +1;
            end;
            
            i:= i-1;
            
            end;
          if (b<=n)then
          begin
           write(a);
           write('/');
           write(b);
           writeln();
          end;
          end;
   a := a+1;
   end; 
end.