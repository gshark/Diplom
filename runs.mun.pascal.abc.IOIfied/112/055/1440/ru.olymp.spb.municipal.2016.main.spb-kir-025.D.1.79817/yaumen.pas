program perestanovki;
var a:array [1..10] of integer;
 n, k, z, x, i, krasota:integer;
begin
readln(n);
readln(k);
x:=0;
  for i:=1 to n do begin
    a[i]:=i;  
   end;
   krasota:=(a[1]*a[2]+a[2]*a[3]+a[3]*a[4]+a[4]*a[5]+a[5]*a[6]+a[6]*a[7]+a[7]*a[8]+a[9]*a[10]);
  for i:=1 to n-1 do begin
    if krasota mod k = 0 then begin
    krasota:=(a[1]*a[2]+a[2]*a[3]+a[3]*a[4]+a[4]*a[5]+a[5]*a[6]+a[6]*a[7]+a[7]*a[8]+a[9]*a[10]);
    writeln(krasota);
      x:=x+1;
    end;
    a[i]:=z;
    a[i]:=a[i+1];
    a[i+1]:=z;
   // write(i);
   end;
   writeln('');
   write(x);
end.