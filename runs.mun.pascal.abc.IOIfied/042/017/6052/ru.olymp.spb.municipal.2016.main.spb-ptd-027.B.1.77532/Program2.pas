program B;
var f, k:real;
i, d, n, p, q, a, m: integer;
begin
 readln (n, p, q);
 k:=101;
 a:=101;
 m:=n;
 for i:=1 to 101 do
 begin
    if n>=a then
            begin
              f:=k/a;
              if f>1 then
              begin
                k:=a-1;
                f:=k/a;
              end;  
              if (1/q<f) then 
              begin
                k:=k-1;
                f:=k/a;
              end;
              for d:=1 to n do
              begin
                if (k div m=0) and (a div m=0) then
                begin
                  k:=k/m;
                  a:=a/m;
                  f:=k/a;
                end;
                writeln (f);
              end;
              while (a<=n)and(a>1) do 
              begin
                if f>1/p then
                begin
                  a:=a-1;
                  f:=k/a; 
                end;
                for d:=1 to n do
                begin
                  if (k div m=0) and (a div m=0) then
                  begin
                    k:=k/m;
                    a:=a/m;
                    f:=k/a;
                  end;
                  writeln (f);
                end; 
              end;
             end  
          else a:=a-1;
   end;
end.   