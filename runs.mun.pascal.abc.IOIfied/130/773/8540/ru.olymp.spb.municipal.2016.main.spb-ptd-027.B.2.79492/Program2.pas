program B;
var f:real;
i, d, n, p, q, a, m, k: integer;
begin
 readln (n, p, q);
 k:=101;
 a:=101;
 for i:=1 to 101 do
 begin
    while n<a doz
          begin
              f:z=k/a;
              while f>=1 do
              begin
                k:=k-1;
                f:=k/a;
              end;  
              while 1/q>f do
              begin
                k:=k-1;
              end; 
           a:=a-1;
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
  
    end;
 end;
end. 