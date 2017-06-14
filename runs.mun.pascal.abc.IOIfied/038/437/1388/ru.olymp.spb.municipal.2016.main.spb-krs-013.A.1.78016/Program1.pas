program test;
var
   a,b,c,d,e,f,g,h,i,k,l,x: integer;
begin
     read(a);
     b:=a div 1000000000;
     c:=(a div 100000000) mod 10;
     d:=(a div 10000000) mod 10;
     e:=(a div 1000000) mod 10;
     f:=(a div 100000) mod 10;
     g:=(a div 10000) mod 10;
     h:=(a div 1000) mod 10;
     i:=(a div 100) mod 10;
     k:=(a div 10) mod 10;
     l:=a mod 10;
     x:=0;
     if b=0 then
      begin
           x:=x+0;
      end;
      if (b>0) and (c=0) and ((d>0) or (d>0) or (e>0) or (f>0) or (g>0) or (h>0) or (i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0)) and (d=0) and ((e>0) or (f>0) or (g>0) or (h>0) or (i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0)) and (e=0) and ((f>0) or (g>0) or (h>0) or (i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0) or (e>0)) and (f=0) and ((g>0) or (h>0) or (i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0) or (e>0) or (f>0)) and (g=0) and ((h>0) or (i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0) or (e>0) or (f>0) or (g>0)) and (h=0) and ((i>0) or (k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0) or (e>0) or (f>0) or (g>0) or (h>0)) and (i=0) and ((k>0) or (l>0)) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if ((b>0) or (c>0) or (d>0) or (e>0) or (f>0) or (g>0) or (h>0) or (i>0)) and (k=0) and (l>0) then
      begin
           x:=x+1;
      end
      else x:=x+0;
      if i=0 then
      begin
      x:=x+0;
      end;
 write(x);
end. 
      
      
      
      
      