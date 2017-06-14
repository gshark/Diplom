program sasha2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,math
  { you can add units after this };
    var a,b,c,i,res,n,m,t,q,r:integer;
      ass:array[1..100,1..100] of integer;


  begin

    read(n);
   for i:=1 to n do
    begin
        for t:=1 to n do
            begin
              if  abs(i-t) < abs(i+t-n-1) then ass[i,t]:=abs(i-t) mod 26 else ass[i,t]:=abs(i+t-n-1) mod 26;






              write(chr(ord('a')+ass[i,t]));
            end;
        writeln;
    end;





    readln;
    readln;
    end.
