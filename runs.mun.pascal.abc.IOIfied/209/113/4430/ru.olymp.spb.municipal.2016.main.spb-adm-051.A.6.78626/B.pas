
Program Proba;

Var
   a: Integer;
   b: Integer;
   c: Integer;
   a1: Integer;
   b1: Integer;
   c1: Integer;
   d: Integer;
   
Begin
     ReadLn(a, b, c);
     If a > b
        Then WriteLn(b, '/', a)
     Else WriteLn(b, '/', a);

     If c > b
        Then WriteLn(b, '/', c)
     Else WriteLn(b, '/', c);

     If a > c
        Then WriteLn(c, '/', a)
     Else WriteLn(c, '/', a);
End.