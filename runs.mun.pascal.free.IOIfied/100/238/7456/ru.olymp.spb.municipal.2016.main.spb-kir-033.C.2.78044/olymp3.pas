var a : array[0..101, 0..101] of char;
        n, i, j : integer;
        c, temp : char;

procedure diagonal(n : integer);
var i: integer;
begin
        for i:=1 to n do a[i,i] := 'a';
        for i:=n downto 1 do a[i,n-i+1]:='a';

end;

procedure fill_near(c : char);
var i,j  : integer;
begin

        for i:= 1 to n do
                for j:=1 to n do
                        if a[i,j]=chr(ord(c)-1) then begin
        if a[i-1,j]=temp then a[i-1,j] := chr(ord(a[i,j])+1);
        if a[i,j-1]=temp then a[i,j-1] := chr(ord(a[i,j])+1);
        if a[i+1,j]=temp then a[i+1,j] := chr(ord(a[i,j])+1);
        if a[i,j+1]=temp then a[i,j+1] := chr(ord(a[i,j])+1);
        end;
end;

procedure output_mas(n: integer);
begin
        for i:=1 to n do begin
                for j:=1 to n do write(a[i,j]);
                writeln;
        end;
end;

begin
        temp:=a[0,0];
        readln(n);
        diagonal(n);

        for c:='b' to chr(ord('a') + n -1) do fill_near(c);
        output_mas(n);
end.