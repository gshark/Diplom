
Var n,p,q: integer;

Var i,j: integer;

Var sok: integer;

Var nes: boolean;

Var n1: integer;

Var maxd: integer;

Var max: real;

Type 
  Drob = Record
    i: integer;
    j: integer;
  End;

Var drob1: array [1..100] Of Drob;

Var temp: Drob;
Begin
  n1 := 0;
  readln(n,p,q);
  max := 0;
  For i:=1 To n Do
    For j := 1 To n Do
      If (i/j < 1) And (1/p < i/j) And (i/j < 1/q) Then
        Begin
          nes := true;
          For sok := j Downto 2 Do
            If (j Mod sok = 0) And (i Mod sok = 0) Then
              nes := false;
          If (nes) Then
            Begin
              inc(n1);
              drob1[n1].i := i;
              drob1[n1].j := j;
            End;

        End;
  For i:=0 To n1-1 Do
    Begin
      For j:=1 To n1-i Do
        Begin
          If ((drob1[j].i / drob1[j].j) > max) Then
            Begin
              max := (drob1[j].i / drob1[j].j);
              maxd := j;
            End;
        End;
      temp := drob1[j];
      drob1[j] := drob1[maxd];
      drob1[maxd] := temp;
      max := 0;
    End;
  For i:=1 To n1 Do
    writeln(drob1[i].i,'/',drob1[i].j);
End.
