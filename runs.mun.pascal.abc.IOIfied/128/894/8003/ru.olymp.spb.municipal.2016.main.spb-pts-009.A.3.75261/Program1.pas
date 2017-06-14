var
  k:longint;
begin
  readln(k);
  if k<100 then
    begin
      if k mod 10=0 then writeln (1);
      if k mod 10<>0 then writeln (2);
    end;
  if k>=100 then
    begin
      if k<1000 then
        begin
          if k mod 10=0 then
            begin
              if k mod 100=0 then writeln(1);
              if k mod 100<>0 then writeln(2);
            end;
          if k mod 10<>0 then
            begin
              if (k-(k-((k div 10)*10))) mod 100=0 then writeln(2)
              else writeln(3);
            end;
        end;
    end;
  readln;
end.
