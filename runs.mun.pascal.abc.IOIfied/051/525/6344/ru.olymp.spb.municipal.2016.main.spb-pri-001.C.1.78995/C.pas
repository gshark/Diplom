program C;

Var
   n, i, j, st, en: Integer;
   m:array[1..100, 1..100] of String;
   
Begin
     Readln(n);
     
     st := 1;
     en := n;
     
     for i:=1 to n do
     begin
          for j:=1 to n do
          begin
               if j = st then
               begin
                    m[i, st] := 'a';

                   if st = 1 then
                   begin
                        m[i, st + 1] := 'b';
                   end;
                   
                   if st = n then
                   begin
                       m[i, st - 1] := 'b';
                   end;
                   
                   if (st <> 1) AND (st <> n) then
                   begin
                      m[i, st - 1] := 'b';
                      m[i, st + 1] := 'b';
                   end;
               end;
               
               if j = en then
               begin
                    m[i, en] := 'a';
                    
                   if en = 1 then
                   begin
                       m[i, en + 1] := 'b';
                   end;

                   if en = n then
                   begin
                       m[i, en - 1] := 'b';
                   end;

                   if (en <> 1) AND (en <> n) then
                   begin
                      m[i, en - 1] := 'b';
                      m[i, en + 1] := 'b';
                   end;
               end;
               
               if m[i, j] = 'b' then
               begin
                   if j = 1 then
                   begin
                        if m[i, j + 1] = '' then
                        begin
                             m[i,j + 1] := 'c';
                        end;
                   end;
                   
                   if (j <> 1) AND (j <> n) then
                   begin
                        if m[i, j - 1] = '' then
                        begin
                            m[i, j - 1] := 'c';
                        end;
                        
                        if m[i, j + 1] = '' then
                        begin
                             m[i, j + 1] := 'c';
                        end;
                   end;
                   
                   if j = n then
                   begin
                       if m[i, j - 1] = '' then
                       begin
                           m[i, j - 1] := 'c';
                       end;
                   end;
               end;
          end;
          
          st := st + 1;
          en := en - 1;
     end;
     
     for i:=1 to n do
     begin
          for j:=1 to n do
          begin
               Write(m[i, j]);
          end;
          Writeln;
     end;
end.