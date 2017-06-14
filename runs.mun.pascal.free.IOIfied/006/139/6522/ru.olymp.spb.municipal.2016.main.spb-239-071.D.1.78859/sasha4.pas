program sasha4;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,math
  { you can add units after this };
    var a,b,c,i,res,n,m,t,q,r,k,j,a1:integer;
      ass:array[1..10] of integer;
       kek:boolean;

  begin

    read(r,q);
       if r=2 then
        begin
          if 2 mod q=0 then writeln(2) else writeln(0);
          end;
         if r=3 then
          begin
            res:=0;
           if 8 mod q=0 then res:=res+2;
            if 9 mod q=0 then res:=res+2;
             if 5 mod q=0 then res:=res+2;
             writeln(res);
          end;

    readln;
    readln;
    end.
{
2 - 1*2=2  2*1=2
3 - 1*2+2*3=8 1*3+3*2=9 2*1+1*3=5





}
