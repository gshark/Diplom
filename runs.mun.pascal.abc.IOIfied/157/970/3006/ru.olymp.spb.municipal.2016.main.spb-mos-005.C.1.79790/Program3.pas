var a:array[1..100,1..100] of char;
begin
var n:shortint;
read(n);
var c:='a';
var k:shortint;
for var i:= 1 to n do 
        for var l:=1 to n do
        a[i,l]:=' ';
if n mod 2 =1 then k:=n div 2 +1 else k:=n div 2;
for var m:=0 to k do begin
    for var i:= 1 to n do 
        for var l:=1 to n do
            if (i=l+m) or (i+m=l) or (l+i+m=n+1) or (l+i=n+1+m)then if a[i,l]=' ' then a[i,l]:=c;
     c:=chr(ord(c)+1);end;
for var i:= 1 to n do begin
        for var l:=1 to n do
        write(a[i,l]);
        writeln();end;
end.

