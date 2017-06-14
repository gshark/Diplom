program sasha1;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,math
  { you can add units after this };
    var a,b,c,i,res,n,m,t,q,r:integer;
      ass:array[1..100000,1..2] of integer;
   function nod(a,b:integer):integer;
   var j:integer;
   begin
     result:=1;
     for j:=2 to floor(sqrt(a)) do
         begin
             if  (a mod j=0) and (b mod j=0) then begin result:=0; break; end;
         end;
   end;

  begin

    read(n,m,c);
   for i:=1 to n do
    begin
        for t:=1 to i do
            begin
                if (t*m*c<i*m) and (t*m*c>i*c) and (nod(t,i)=1)
                then begin res:=res+1; ass[res,1]:=t; ass[res,2]:=i; end;
                if t*m*c>=i*m then break;
            end;
    end;
   for i:=1 to res do
       for c:=1 to res-1 do
          begin
              if (ass[c,1]*ass[c+1,2])>(ass[c+1,1]*ass[c,2])  then
              begin
                  q:=ass[c,1];
                  r:=ass[c,2];
                  ass[c,1]:=ass[c+1,1];
                  ass[c,2]:=ass[c+1,2];
                  ass[c+1,1]:=q;
                  ass[c+1,2]:=r;
                end;

              end;
   for  i:=1 to res do writeln(ass[i,1],'/',ass[i,2]);
    readln;
    readln;
    end.
