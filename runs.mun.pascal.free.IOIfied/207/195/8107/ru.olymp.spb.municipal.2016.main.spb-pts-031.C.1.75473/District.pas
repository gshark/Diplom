program District;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp
  { you can add units after this };
var
  n,i,j: integer;
  a: array[1..100,1..100] of char;
Begin
   read(n);
   for i:= 1 to n div 2 do begin
       a[i,i] := 'a';
       a[i,n+1-i] := 'a';
       for j := i-1 downto 1 do
           a[i,j] := chr((ord(a[i,j+1]) + 1 - ord('a')) mod 26 + ord('a'));
        for j := n - i+2 to n do
           a[i,j] := chr((ord(a[i,j-1]) + 1 - ord('a')) mod 26 + ord('a'));
          for j := i+1 to n div 2 do
           a[i,j] := chr((ord(a[i,j-1]) + 1 - ord('a')) mod 26 + ord('a'));
        for j := n-i downto n div 2 + 1 do
          a[i,j] := chr((ord(a[i,j+1]) + 1 - ord('a')) mod 26 + ord('a'));
   end;
    for i := n div 2 + 1 to n do begin
       a[i,i] := 'a';
       a[i,n+1-i] := 'a';
       for j := n  - i downto 1 do
           a[i,j] := chr((ord(a[i,j+1]) + 1 - ord('a')) mod 26 + ord('a'));
        for j := i + 1 to n do
           a[i][j] := chr((ord(a[i,j-1]) + 1 - ord('a')) mod 26 + ord('a'));
         for j := n - i+2 to n div 2 do
           a[i,j] := chr((ord(a[i,j-1]) + 1 - ord('a')) mod 26 + ord('a'));
         for j := i - 1 downto n div 2 + 1 do
          a[i,j] := chr((ord(a[i,j+1]) + 1 - ord('a')) mod 26 + ord('a'));
         end;
      for i := 1 to n do begin
         for j := 1 to n do begin
            write(a[i,j]);
            end;
         writeln();
         end;
      readln();
      readln();
End.
