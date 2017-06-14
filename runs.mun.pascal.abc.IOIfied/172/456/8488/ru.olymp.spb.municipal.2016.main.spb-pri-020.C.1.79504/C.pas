Program C3;
  VAR N: ARRAY[1..100,1..100] of Char;
  VAR S: string;
  VAR k,i,j: Integer;
begin
  read(k);
  For i:=1 to k do
   For j:=1 to k do
       begin
       If (i=j) or (i+j=k+1) then
        N[i,j]:= CHR(97)
        else
        if (i-j=1) or (j-i=1)
        then
        N[i,j]:=CHR(98)
        else
        begin
        if i>j then
        N[i,j]:=CHR(97+(i-j))
        else
        N[i,j]:=CHR(97-(i-j));
        end;
        end;
    For i:=1 to k do
    begin
      For j:=1 to k do
        write(N[i,j]);
    writeln();
    end;
 end.