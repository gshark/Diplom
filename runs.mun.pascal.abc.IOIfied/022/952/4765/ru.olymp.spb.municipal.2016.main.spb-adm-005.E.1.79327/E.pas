program wut;

var
     x, y: integer;
     r, c, q: integer;

procedure how(x, y, n: integer);
     
     
     function diag(x, y, n: integer): integer;
     begin
          writeln(y + ' ' + x);
          if(x > 1) and (y < r) and (n >= 1) then
          begin
               diag := diag(x - 1, y + 1, n - 1);
               exit;
          end;
          diag := n;
     end;

begin
     if(x > 1) and (y < r) and (x < c) and (n <> 0) then
     begin
          writeln(y + ' ' + x);
          n := diag(x - 1, y + 1, n - 1);
          how(x + 1, y, n);
     end
     else if(x = c) and (y < r) and (n <> 0) then
     begin
          writeln(y + ' ' + x);
          n := diag(x-1, y + 1, n - 1);
          how(x, y + 1, n);
     end
     else if(x = 1) and (y = 1) then 
     begin
          writeln(y + ' ' + x);
          how(x + 1, y, n - 1); 
     end
     else if(x = c) and (y = r) then writeln(y+ ' '+ x);
end;



begin
     readln(r, c, q);
     readln();
     how(1, 1, q);
end.