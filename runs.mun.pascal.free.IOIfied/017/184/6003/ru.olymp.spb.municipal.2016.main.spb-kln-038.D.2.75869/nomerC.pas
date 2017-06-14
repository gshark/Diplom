program nomerC;
var n,b,I,c: integer;

begin;
readln(n);
 readln(c);
 b:=0;
 for I:=1 to n-1 do begin ;
       b:= I * (I+1)  + b;
 end;
 if b mod c = 0 then writeln(2);
 readln();
end.
