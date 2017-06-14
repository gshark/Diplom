
Program Proba;

Var
   a: Integer;
   b: Integer;
   n: Integer;
   i: Integer;
   j: Integer;
   i1: Integer;
   j1: Integer;
   k: Integer;
   x: Array[1..100] Of Integer;
   y: Array[1..100] Of Integer;
   z: Integer;
   
Begin
     ReadLn(n, a, b);
     For j := 1 To n Do
     Begin
          For i := 1 To n Do
          Begin
               If (1 / a < i / j) And (i / j < 1 / b)
                  Then
                  Begin
                          For z := 1 To k Do
                          Begin
                               If i / j <> x[z] / 100
                                  Then
                                  Begin
                                       k := k + 1;
                                       x[k] := i;
                                       y[k] := j;
                                  End;
                          End;
                  End;
          End;
     End;
     
     For z := 1 To k Do
     Begin
          WriteLn(x[z], '/', y[z]);
     End;
End.