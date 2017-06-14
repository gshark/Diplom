  Program S2;
 const n=3;
   var a:array[1..n] of integer;
    h,i,l,k,m:integer;
     Begin
   randomize;
    h:=random(10);
   k:=random(999);
   for i:= 1 to n do begin
   a[i]:=random(n);
   write(a[i]:4);
   end;
   writeln;
   for i:=1 to n-2 do begin
     m:=a[i]*a[i+1]+a[i+1]*a[i+2];
     a[i]:=a[i+1];
     a[i+1]:=a[i+2];
     a[n]:=a[i];
     write(a[i]:4);
     writeln ('Красота ', m);
     end;
     if m mod k =0 then l:=l+1;
     
     writeln('Количество перестановок ',l);
     end.