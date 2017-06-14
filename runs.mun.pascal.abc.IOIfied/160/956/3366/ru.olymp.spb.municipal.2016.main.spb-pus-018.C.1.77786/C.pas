Program C;
const
n=5;
var
i,j:integer;
A:array [1..n, 1..n] of string;
begin
For i:=1 to n do
  Begin
    For j:=1 to n do
      begin
        If (i=j) or (i+4=j) or (j+4=i) then A[i,j]:='a' else
        If (i+1=j) or (j+1=i) or (i+3=j) or (j+3=i) then A[i,j]:='b' else
        A[i,j]:='c';
        Write(A[i,j]);
      end;
    writeln(A[i,j]);
  end;
end.