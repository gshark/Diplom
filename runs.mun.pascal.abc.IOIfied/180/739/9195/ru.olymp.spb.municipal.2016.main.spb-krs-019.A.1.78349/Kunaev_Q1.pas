Program zero;
var
  kS, kE, i, j, kD, res, kD1:integer;         
  kStr : string;
BEGIN
  readln(kS);
  for i:= length(IntToStr(kS)) downto 1 Do
    Begin
      kStr := kStr + intToStr(kS mod 10);
      kS := ks div 10;
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
END.