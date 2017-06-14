Program PR_C;
 var a:array [1..100, 1..100] of integer;
     n, i, j, k:integer;
Begin
  readln (n);
  if n mod 2 = 1 then k:= n div 2+1
                 else k:= n div 2;
  for i:=1 to n do begin
   for j:=1 to n do begin
   a[i, j]:= j;
     if (i>k) then a[i, j]:=i-k-1;
     if (j>k) then a[i, j]:=j-k;    
     write (a[i, j]);
     end;
     writeln;
     end;
     end.
    