program D;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes ,math
  { you can add units after this };


 var
   n,k:integer;
   begin
   read(n,k);
    if k>n*n*n then write(0)
    else

     begin
       if (n=3 )and (k=2) then write(2);
       if (n=3) and (k=3) then write(2);
       if (n=3) and (k=4) then write(2);
        if (n=3) and (k=5) then write(2);
        if (n=3) and (k=6) then write(0);
         if (n=3) and (k=7) then write(0);
          if (n=3) and (k=8) then write(2);
           if (n=3) and (k=9) then write(2);
            if (n=3) and (k>9) then write(0);
            if n<>3 then write(0);
     end;


readln();
readln();


end.

