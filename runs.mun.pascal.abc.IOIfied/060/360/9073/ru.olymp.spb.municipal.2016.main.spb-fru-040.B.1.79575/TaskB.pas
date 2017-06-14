Program B;
Var
n,p,q,i,ii,d,zanos,pret:integer;
res1:Array [1..100] of real;
res2:Array [1..100] of real;
function krat (i1,i2,d:integer):integer;
begin
  for d:=2 to i1 do
    begin
      if (i2 mod d = 0) and (i1 mod d = 0) then Result:=1;
    end;
  if Result <> 1 then Result:=0;
end;
Begin
  Readln(n,p,q);
  for i:=1 to n do
    begin
      for ii:=1 to i do
        begin
          if (ii/i > 1/p) and (ii/i < 1/q) and (krat(ii,i,d) = 0) then
            begin
              zanos:=zanos+1;
              res1[zanos]:=ii;
              res2[zanos]:=i;
              //Writeln(ii,'/',i);
            end;
        end;
    end;
//Вывод
    // // // // //
    pret:=1;
  for ii:=1 to zanos do
    begin
      for i:=1 to zanos do
        begin
          if (res1[i]/res2[i] <> 0) and (res1[i]/res2[i] < res1[pret]/res2[pret]) then
            begin
              pret:=i;
            end;
        end;
        Writeln(res1[pret],'/',res2[pret]);
        res1[pret]:=0;
        res2[pret]:=0;
        for d:=zanos downto 1 do
          begin
            if res1[d]<>0 then
              begin
                pret:=d;
              end;
          end;
    end;
End.