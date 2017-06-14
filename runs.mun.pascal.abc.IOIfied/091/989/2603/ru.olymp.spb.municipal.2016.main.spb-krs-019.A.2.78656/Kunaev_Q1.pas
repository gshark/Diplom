Program zero;
var
  k, kE, i, j, kD, res, kD1:integer;         
  kStr : string;
BEGIN
  readln(k);
  If k >= 1 and k <= 1000000000 Then 
    Begin
      for i:= length(IntToStr(k)) downto 1 Do
        Begin
          kStr := kStr + intToStr(k mod 10);
          k := k div 10;
          kE := StrToInt(kStr);
        End;
      kD1 := kE;
      for j:= 1 to length(IntToStr(kE)) Do
        Begin
          If kE > 10 then kD := kE mod (kE div 10)
        Else kD := kE;
      If kD = 0 then res := res + 1;
      kE := kE div 10;
    End;
    Writeln(res);
    End;
END.