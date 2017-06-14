Program HELP;
Var k, N:Integer;
Begin
Readln (k);
If (k div 100000000>0) and (k div 10000000 mod 10=0) then N:=N+1;
If (k mod 100000000=0) then N:=N+1;
If (k div 10000 mod 100000=0) then N:=N+1;
If (k mod 10000000 div 10=0) then N:=N+1;
If (k mod 1000000 div 100=0) then N:=N+1;
If (k div 1000000 mod 100=0) then N:=N+1;
If (k div 1000 mod 1000000=0) then N:=N+1;
If (k mod 1000000 div 1000=0) then N:=N+1;
Writeln(N);
End.
