var
  n, p, q, i, k, j: integer;
  chis, znam : integer;
  chis1, znam1, temp1, temp2 :real;
  ar: array [1..100000, 1..2] of real;
begin
  read(n, p, q);
  chis := 1;
  znam := n-1;
  chis1 := 1;
  znam1 := n-1;
  i:=1;
  while znam > 0 do begin
    while chis < znam do
    begin
      if (chis mod znam <> 0) and (chis1/znam1 > 1/p) and (chis1/znam1 < 1/q) then
        begin
          ar[i, 1] := chis1;
          ar[i, 2] := znam1;
          i := i+1
        end;
      chis := chis + 1;
      chis1 := chis1 + 1
    end;
    chis := 1;
    znam := znam - 1;
    chis1 := 1;
    znam1 := znam1 - 1;
  end;
   
   for k := 1 to i do
      begin
          for j := 1 to i do
            begin
              if ar[j,1]/ar[j,2] > ar[k,1]/ar[k,2] then
                begin
                  temp1 := ar[j,1];
                  temp2 := ar[j,2];
                  ar[j,1] := ar[k,1];
                  ar[j,2] := ar[k,2];
                  ar[k,1] := temp1;
                  ar[k,2] := temp2
            end;
      end;
      end;
  for k:= 1 to i-1 do
    writeln(ar[k,1], '/', ar[k,2]);
end.