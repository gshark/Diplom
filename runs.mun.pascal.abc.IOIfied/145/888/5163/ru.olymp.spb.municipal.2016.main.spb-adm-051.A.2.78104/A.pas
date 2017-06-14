
Program Proba;

Uses
    Crt;

Var
   a: Integer;
   b: Integer;
   e: Integer;
   i: Integer;
   i1: Integer;
   ch: Integer;
   ch1: Integer;

Begin
     HideCursor;
     WriteLn('Введите число');
     ReadLn(ch1);
     ch := ch1;
     
     Repeat
           Begin
                a := ch Mod 10;
                If a = 0 Then
                e := e + 1;
                ch := ch Div 10;
           End;
     Until ch = 0;
     
     ch := ch1;
     Repeat
           Begin
                a := ch Mod 10;
                If a = 0 Then
                e := e - 1;
                ch := ch Div 10;
           End;
     Until a <> 0;
     
     WriteLn('Красота ', e, ' по шкале Саши');
End.