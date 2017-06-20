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