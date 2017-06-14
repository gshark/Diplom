program task1;
uses crt;
var num:string; k,k1,i:integer;
Begin
  readln(num);
  
  k:= 0;
  k1:= 0;
  
  for i:= 2 to Length(num) do
  begin
   if num[i] = '0' then k1:= k1 + 1
   else 
   begin
    k:= k + k1;
    k1:= 0;
   end;
  end;
  
  writeln(k);
End.