        program a;
        var n,k: integer;
        var l: real;
        var f: boolean;
        begin
        readln(k);
        f:=false;
        if (k<1000000000) and (k>0) then
        begin
          while k>=10  do
          begin
              if k mod 10 <> 0 then
              begin
              f := true ;
              k:=(k-(k mod 10)) div 10;
              end
              else
              begin
              if f = true  then
              begin
              n := n+1 ;
              k:=k div 10  ;
              end
              else
              begin
              k:=k div 10  ;
              end;
              end;
          end;
          writeln(n);
          end;
        end.
        
