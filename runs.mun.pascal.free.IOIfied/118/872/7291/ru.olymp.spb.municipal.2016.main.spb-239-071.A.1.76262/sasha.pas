program sasha;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };
    var a,b,c,i,res,n:integer;
  begin
    c:=0;
    read(n);
    while n<>0 do
    begin
     if n mod 10<>0 then c:=1
     else if c=1 then res:=res+1;
     n:=n div 10;
    end;
    writeln(res);
    readln;
    readln;
    end.
