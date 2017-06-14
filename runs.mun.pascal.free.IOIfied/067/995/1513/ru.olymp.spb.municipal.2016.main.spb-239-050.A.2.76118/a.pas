program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var
  n,c,cf,i,fl:integer;
  k:string;

begin
  readln(k);
  c:=0;
  cf:=0;
  fl:=0;
   for i:=1 to length(k) do begin
     if fl=0 then begin
        if k[i]<>'0' then begin
           fl:=1;
           continue;
        end;

     end;

     if fl=1 then begin
        if ('1'<=k[i]) and (k[i]<='9') then begin
           cf:=cf+c;
           c:=0;
           continue;
        end;

        if k[i]='0' then begin
           inc(c);
           continue;
        end;


      end;
   end;
   write(cf);
end.

