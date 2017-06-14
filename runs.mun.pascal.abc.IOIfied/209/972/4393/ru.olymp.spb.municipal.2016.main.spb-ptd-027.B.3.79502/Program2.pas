program B;
var f:real;
i, d, n, p, q, a, m, k: integer;
begin
 readln (n, p, q);
 k:=101;
 a:=101;
 for i:=1 to 101 do
 begin
    while n<a do 
          begin
              a:=a-1;
              f:=k/a;
              while f>=1 do
              begin
                k:=k-1;
                f:=k/a;
              end;  
              if 1/q<f then
              begin
                k:=k-1;
              end; 
          
           end;
           writeln (k,'/',a);
    while (a>k*p) and (a<k*q) do
     begin
          a:=a-1;
          if (k/a>1/p) and (k/a<1/q) then
          writeln (k,'/',a)
          else 
          begin
            k:=k-1;
            a:=a-1;
          end;
          writeln (k,'/',a)
  
    end;
 end;
end. 