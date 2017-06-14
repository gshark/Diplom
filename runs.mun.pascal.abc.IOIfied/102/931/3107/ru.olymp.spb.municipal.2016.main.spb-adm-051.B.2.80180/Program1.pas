Program Proba;
Var
   f: Text;
   a: Integer;

Begin
     For a := 32 To 127 Do Begin

     Assign(f, 'Lol');
     ReWrite(f);
     Write(f, Ord(a));
     End;
End.