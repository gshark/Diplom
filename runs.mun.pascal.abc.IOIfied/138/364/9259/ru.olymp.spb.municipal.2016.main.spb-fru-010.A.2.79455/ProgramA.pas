Program ProgA;

  Var a,count,i:integer;
      num :string;
  
Begin
  num:=ReadString;
  a:=num.ToInteger;
  num:=a.ToString;
  num:=ReverseString(num);
  a:=num.ToInteger;
  num:=a.ToString;
  count:=0;
  for i:=num.Length downto 1 do
    Begin
    if(a MOD 10=0) then
      count+=1;
    a:=a DIV 10;
    end;
  Writeln(count);
end.