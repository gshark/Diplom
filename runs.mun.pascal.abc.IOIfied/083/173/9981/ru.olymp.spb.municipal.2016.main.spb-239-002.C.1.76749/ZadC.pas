program zadC;
var n,i,j: longint;
    al: array[1..26] of char;
begin
read(n);
for i:=1 to 26 do begin
    al[i]:=chr(i+96);
end;
for i:=1 to n do begin
    for j:=1 to n do begin
        if (j<=n/2)and(i<=n/2) then
            write(al[(abs(j-i))mod 26+1]);
        if (j>n/2)and(i<=n/2) then 
            write(al[(abs(j-n+i-1))mod 26+1]);
        if (j>n/2)and(i>n/2) then
            write(al[(abs(j-i))mod 26+1]);
        if (j<=n/2)and(i>n/2) then 
            write(al[(abs(j-n+i-1))mod 26+1]);
    end;
    writeln();
end;
end.