Program Proba;
Var
   f: Text;
   a: Integer;
   b: String;

Begin

     For a := 50 To 127 Do Begin
     b := Chr(a);
     Assign(f, b);
     ReWrite(f);
     Write(f, Chr(a), ' ');
     Close(f);
     End;

End.