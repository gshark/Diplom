
var
n,k,c,i,j:integer;
begin
c:=0;
Read(n);
Read(k);
For i:=1 To n Do
for j:=1 To n Do
Begin
If j>i Then
Begin
If j+2<=n Then
Begin
If (i*(j+1) + (j+1)*(j+2)) mod k = 0 Then
 c:=c+1;
end;
If j = n Then
Begin
If (i*j + j*(j+1)) mod k = 0 Then
c:=c+1;
end;
If j+1=n Then
Begin
If (i*j + (j+1)*j) mod k = 0 Then
 c:=c+1;
end;
end;
If j = i Then
Begin
If j+2<=n Then
Begin
If (i*(j-1) + (j-1)*(j+1)) mod k = 0 Then
 c:=c+1;
end;
If j = n Then
Begin
If (i*j + j*(j-1)) mod k = 0 Then
c:=c+1;
end;
If j+1=n Then
Begin
If (i*(j-1) + (j-1)*j) mod k = 0 Then
 c:=c+1;
end;
end;
 If j < i Then
Begin
If j+2<=n Then
Begin
If (i*(j-2) + (j-2)*(j-1)) mod k = 0 Then
 c:=c+1;
end;
If j = n Then
Begin
If (i*(j-1) + (j-1)*(j+1)) mod k = 0 Then
c:=c+1-2
end;
If j+1=n Then
Begin
If (i*j + j*(j-1)) mod k = 0 Then
 c:=c+1;
end;
end;
end;
write(c);
end.
