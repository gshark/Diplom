Program D;
Var
E,A,B,C,L:integer;
I:longint;
S:string;
Begin
Readln(S);
For I:=1 To Length(S) Do Begin
  If S[i] <> '0' Then Begin
    E:=E+1;
  End;
End;
L:=Length(S);
While S[L] = '0' Do Begin
  B:=B+1;
  L:=l-1
  End;

A:= Length(s) - (E);

A:=A - B;  
Writeln(A);

End.

 