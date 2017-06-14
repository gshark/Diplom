Program nulizadacha1;
Var
  a,k,i,f,d:Integer;
  c:boolean;
Begin
  Writeln('Введите число:');
  Readln(k);
  d:=k;
  c:=False;
  a:=0;
  f:=10;
  While (c<>True) Do
    Begin
      a:=k mod f;
      if (a mod f <> 0 ) Then
      Begin
        k:=k div f;
        c:=True;
      End;
     f:=f*10;
    End;
  a:=0;
  i:=0;
  While (k>0) Do
    Begin
      a:=k mod 10;
      if (a=0) Then
        i:=i+1;
      k:=k div 10;
     End;
  Writeln('Красота числа ',d,' = ',i);
End.
    