program Project1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };

var a,k:integer;
begin
  read(a);
  while (a mod 10 = 0) do
   a:=a div 10;
  k:=0;
  while(a>0) do
   begin
     if (a mod 10 = 0) then k:=k+1;
     a:=a div 10;
   end;
  write(k);
  readln();
  readln();
end.

