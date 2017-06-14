program CCC;
var
 n,i,j:integer;
begin
 readln(n);
 for i:=1 to n do begin
                   for j:=1 to n do begin
                                     if (abs(i-j) mod 2) = 1 then begin
                                                                   write('b');
                                                                  end;
                                     if ((abs(i-j) mod 2) = 0) and (i<>j) then begin
                                                                                write('c');
                                                                               end;
                                     if i=j then begin
                                                  write('a');
                                                 end;
                                    end;
                   writeln();
                  end;
end.