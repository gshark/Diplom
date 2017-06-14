Var
n,i,j,p,q:Integer;
begin
Readln(n);
Readln(p);
Readln(q);
For i:=1 To n -1 Do
For j:= 1 To n-1 Do
begin
If (j/i > 1/p) And (j/i < 1/q) Then
begin
Write(j);
Write('/');
Writeln(i);
end;
end;
end.

