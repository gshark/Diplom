 Program S2;
    
     var  f,q:real;
     m,l:integer;
     p,i,n:integer;
        Begin
         
          randomize;
        n:=random(101);
        p:=random(101);
        q:=random(p);
       m:=1;
       l:=1;
      
     writeln(n,'  ',p,'  ',q);
       for i:=1 to n do begin
        m:=random(n);
        l:=random(m);
       
       f:=l/m;
     if ((l mod m<>0)and (m<n) and (f > 1/p) and (f < 1/q)) then 
       
     writeln (l,'/',m);
   end;
     
        
     
     End.