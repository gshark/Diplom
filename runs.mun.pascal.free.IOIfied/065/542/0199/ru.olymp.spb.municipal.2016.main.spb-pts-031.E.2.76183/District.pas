program District;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp, Math;
var
  m,n,k,q,r,c,i,j: integer;
  a: array[1..100] of integer;
Begin
   read(r,c,q);
    for i:= 1 to q do
     read(a[i]);
     if r < c then  begin
       for i:= 1 to q do begin
        if a[i] <= r*(r+1) div 2 then begin
          k:=floor(sqrt(2*a[i])) - 1;
          while((k*k - k + 2 > 2*a[i]) or (k*k + k < 2*a[i])) do
          k:=k+1;
          writeln(a[i]-(k*k-k+2)div 2+1,' ',k - (a[i]-(k*k-k+2)div 2));
        end else begin
             if a[i] <= r*(r+1) div 2 + r*(c-r) then begin
                 k:=r + (a[i] - (r*r + r)div 2)div r;
                  m:= (a[i] - (r*r + r)div 2 - 1) mod r + 1;
                  writeln(m,' ', k - m);
             end else begin
              a[i]:= (r*r - r) div 2 - a[i] + r*(r+1) div 2 + r*(c-r) + 1;
              k:=floor(sqrt(2*a[i])) - 1;
          while((k*k - k + 2 > 2*a[i]) or (k*k + k < 2*a[i])) do
          k:=k+1;

          writeln(r+1 - (a[i]-(k*k-k+2)div 2+1),' ',c+1 - (k - (a[i]-(k*k-k+2)div 2)));
             end;
          end;
       end;
     end else begin
             for i:= 1 to q do begin
        if a[i] <= c*(c+1) div 2 then begin
          k:=floor(sqrt(2*a[i])) - 1;
          while((k*k - k + 2 > 2*a[i]) or (k*k + k < 2*a[i])) do
          k:=k+1;
          writeln(a[i]-(k*k-k+2)div 2+1,' ',k - (a[i]-(k*k-k+2)div 2));
        end else begin
             if a[i] <= c*(c+1) div 2 + c*(r-c) then begin
                 k:=c + (a[i] - (c*c + c)div 2)div c;
                  m:= (a[i] - (c*c + c)div 2 - 1) mod c + 1;
                  writeln(k - m,' ', m);
             end else begin
              a[i]:= (c*c - c) div 2 - a[i] + (c*c + c) div 2 + r*(c-r) + 1;
              k:=floor(sqrt(2*a[i])) - 1;
          while((k*k - k + 2 > 2*a[i]) or (k*k + k < 2*a[i])) do
          k:=k+1;

          writeln(r+1 - (a[i]-(k*k-k+2)div 2+1),' ',c+1 - (k - (a[i]-(k*k-k+2)div 2)));
             end;
          end;
       end;
          end;
      readln();
      readln();
End.
