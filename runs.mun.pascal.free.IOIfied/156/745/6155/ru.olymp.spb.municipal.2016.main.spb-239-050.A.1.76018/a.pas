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
   for i:=0 to length(k)-1 do begin
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
   write(cf);
end.

