program project2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  n,k,p,q,i,j:integer;
  a:array[1..100,1..100] of integer;
begin
  read(n);
  for i:=1 to n div 2 do
    for j:=1 to n div 2 do begin
      a[i,j]:=abs((i-j)) mod 26;
      a[n-i+1,j]:=a[i,j];
      a[i,n-j+1]:=a[i,j];
      a[n-i+1,n-j+1]:=a[i,j];
    end;
  if n mod 2=1 then for i:=1 to n div 2 +1 do begin
    a[n div 2 +1,i]:=n div 2 -i+1;
    a[i,n div 2 +1]:=n div 2 -i+1;
    a[n div 2 +1,n-i+1]:=n div 2 -i+1;
    a[n-i+1,n div 2 +1]:=n div 2 -i+1;
  end;
  for i:=1 to n do begin
   for j:=1 to n do write(chr(a[i,j]+ord('a')));
   writeln;
  end;
  readln;
  readln;
end.

