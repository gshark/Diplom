program yanevalera;
var arr:array[1..100,1..100] of char;
        n,k,a,i,j:byte;
        sym:char;
begin

readln(n);

for i:=1 to n do begin
arr[i,i]:=chr(97);
arr[n-i+1,i]:=chr(97);
        for j:=i+1 to trunc(n/2)+1 do begin
        sym:=chr(98+j-(i+1));

        arr[j,i]:=sym;
        arr[n-j+1,i]:=sym;
        arr[j,n-i+1]:=sym;
        arr[n-j+1,n-i+1]:=sym;

        arr[i,j]:=sym;
        arr[i,n-j+1]:=sym;
        arr[n-i+1,j]:=sym;
        arr[n-i+1,n-j+1]:=sym;
        end;


end;



for i:=1 to n do begin
        for j:=1 to n do
        write(arr[j,i]);
        writeln;
        end;

end.
