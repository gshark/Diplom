program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };
var
  s:string;
  sum, i:integer;
begin
  read(s);
  i:=length(s);
  sum:=0;
  while s[i]='0' do i:=i-1;
  while i>=1 do begin
    if s[i]='0' then sum:=sum+1;
    i:=i-1;
  end;
  writeln(sum);
  readln;
  readln;
end.

