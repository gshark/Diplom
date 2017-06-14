program D;
var a array[1..100]: longint;
    b array[1..100]: longint;
    k,c,d,n,i:integer;
begin
     read(n);
     read(k);
     i:=0;
     n:=a[1],a[2],a[3],..,a[n];
     a[1]*a[2]+a[2]*a[3]+a[3]*a[4]+..+ a[n-1]*a[n]:=b[1];
     a[1]*a[3]+a[3]*a[2]+..+a[n-1]*a[n]:b[2];
     .
     .
     .
     b[1] mod k:=c;
     if c=0 then
     i:=i+1;
     .
     .
     .
writeln(i);
end.