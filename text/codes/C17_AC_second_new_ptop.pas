
Program num3;

Var i,j,k,kk,n: longint;
  a: array[0..101,0..101] Of integer;
Begin
  read(n);
  For i:=0 To 101 Do
    For j:=0 To 101 Do
      a[i,j] := 0;

  For k:=1 To ((n+1) Div 2) Do
    Begin
      For i:=1 To n Do
        Begin
          For j:=1 To n Do
            Begin
              If k=1 Then
                Begin
                  If (i=j)Or(n-i+1=j)Or(n-j+1=i) Then a[i,j] := 1;
                End
              Else
                Begin
                  If k>=26 Then kk := k-26
                  Else kk := k;
                  If (a[i,j]=0)And((a[i-1,j]=kk-1)Or(a[i+1,j]=kk-1)Or(a[i,j-1]=kk-1)Or(a[i,j+1]=kk-1
                     )) Then
                    Begin
                      a[i,j] := kk;
                    End;
                End;
            End;
        End;
    End;
  For i:=1 To n Do
    Begin
      For j:=1 To n Do
        Begin
          write(chr(ord(a[i,j])+ord('a')-1));
        End;
      writeln;
    End;
End.
