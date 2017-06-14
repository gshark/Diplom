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

begin
  read(n);
  for i:=1 to n do begin
    for j:=1 to n do write(chr(abs(i-j)+ord('a')));
    writeln;
  end;
  readln;
  readln;
end.

