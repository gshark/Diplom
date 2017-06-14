Program zadacha2;
Var
  n,p,q,k,d,m,a:Integer;
  f,preal,qreal:Real;
  c:boolean;
Begin
  c:=False;
  While (c<>True) Do
  Begin
    Writeln('¬ведите числа n , p и q : ');
    Readln(n,p,q);
    If (n<=0) Or (n>=100) Or (q<=0) Or (q>=p) Or (p<=0) Or (p>100) Then
      Writeln('ќшибка')
    Else
      c:=True;
  End;
  k:=q;
  d:=p;
  a:=1;
  m:=1;
  preal:=1/p;
  qreal:=1/q;
  f:=1;
     Repeat
      Begin
        For a:=1 to p Do
          For k:=q to p Do
            Begin
              f:=a/k;
              If (f>preal) Or (f<qreal) And (f<>1) Then
                Writeln(f);
            End;
         End;
     Until (preal>f) Or (qreal<= f)
 End.