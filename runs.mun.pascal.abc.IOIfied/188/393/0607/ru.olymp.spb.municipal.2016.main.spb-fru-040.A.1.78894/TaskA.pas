Program A;
Var
  input,i,res,b:integer;
  inpstr,last:string;
Begin
  Readln(input);
  inpstr:=IntToStr(input);
  for i:=1 to Length(inpstr) do
  begin
  last:=Copy(inpstr,Length(inpstr),1);
  if StrToInt(last) = 0 then
    begin
      Delete(inpstr,Length(inpstr),1);
    end;
  end;
  for i:=1 to Length(inpstr) do
    begin
      last:=Copy(inpstr,Length(inpstr),1);
      if StrToInt(last) = 0 then
        begin
          b:=b+1;
        end;
      Delete(inpstr,Length(inpstr),1);
    end;
   Writeln(b);
End.