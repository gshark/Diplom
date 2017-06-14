program krasota;
var k,b:longint;
a:integer;
begin
        read(k);
        b:=k+1;
        while b <> k do
        begin
                b:=b-1;
                if b mod 10 = 0 then b:= b div 10;
                if b mod 10 <> 0 then k:=b;
        end;
        while k > 0 do
        begin
                if k mod 10 = 0 then a:= a + 1;
                k:= k div 10;
        end;
        writeln(a);
end.