Program C3;
  VAR N: ARRAY[1..100,1..100] of Char;
  VAR S: string;
  VAR k,i,j,l: Integer;
begin

  read(k);
  if (k mod 2)=0
  then
  begin
  For i:=1 to k do
  begin
  l:=1;
   For j:=1 to k do
       begin
       If (i=j) or (i+j=k+1) then
        N[i,j]:= CHR(97)
        else
        if i<=(k mod 2) then
        begin
        if i>j then
        N[i,j]:=CHR(97+(i-j))
        else
        N[i,j]:=CHR(97-(i-j));
        end
        else
        begin
        N[i,j]:=N[i-l,j];
        l:=l+2;
        end;
        end;
  end;
       end
       else
  begin
  For i:=1 to k do
  begin
  l:=0;
   For j:=1 to k do
       begin
       If (i=j) or (i+j=k+1) then
        N[i,j]:= CHR(97)
        else
        if i<=(k mod 2)+1 then
        begin
        if i>j then
        N[i,j]:=CHR(97+(i-j))
        else
        N[i,j]:=CHR(97-(i-j));
        end
        else
        begin
        N[i,j]:=N[i-l,j];
        l:=l+2;
        end;
        end;
  end;
  end;
    For i:=1 to k do
    begin
      For j:=1 to k do
        write(N[i,j]);
    writeln();
    end;
 end.