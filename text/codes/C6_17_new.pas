
Var 
  a: array[1..100,1..100] Of char;
  n,i,j,k,l,b,max: integer;
  s: char;
Begin
  readln(n);
  For i:=1 To n Do
    Begin
      a[i,i] := 'a';
      a[i, n-i+1] := 'a';
    End;
  For i:=1 To n Do
    For j:=1 To n Do
      Begin
        b := 0;
        If a[i,j]<>'a' Then
          Begin
            b := 0;
            For k:=1 To j Do
              Begin
                If a[i,k]='a' Then
                  max := k
                Else
                  b := j-max;
              End;
            For k:=n Downto j Do
              Begin
                If a[i,k]='a' Then
                  max := k
                Else
                  If (max-j<=abs(b)) And (max-j>0)  Then b := max-j;
              End;
            a[i,j] := chr(ord('a')+b);
          End;
      End;
  For i:=1 To n Do
    Begin
      For j:=1 To n Do
        write(a[i,j]);
      writeln('');
    End;
End.
