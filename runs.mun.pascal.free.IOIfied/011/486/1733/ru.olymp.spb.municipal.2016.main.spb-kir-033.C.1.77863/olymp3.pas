var a : array[0..101, 0..101] of char;
        n, i, j : integer;
        c : char;

procedure diagonal(n : integer);
var i: integer;
begin
        for i:=1 to n do a[i,i] := 'a';
        for i:=n downto 1 do a[i,n-i+1]:='a';

end;

procedure fill_near(i,j:integer);
begin
        if a[i-1,j]=a[0,0] then a[i-1,j] := chr(ord(a[i,j])+1);
        if a[i,j-1]=a[0,0] then a[i,j-1] := chr(ord(a[i,j])+1);
        if a[i+1,j]=a[0,0] then a[i+1,j] := chr(ord(a[i,j])+1);
        if a[i,j+1]=a[0,0] then a[i,j+1] := chr(ord(a[i,j])+1);
end;

procedure output_mas(n : integer);
begin
        for i:=1 to n do begin
                for j:=1 to n do write(a[i,j]);
                writeln;
        end;
end;

begin
        readln(n);
        diagonal(n);

        for i:=1 to n do
                for j:=1 to n do fill_near(i,j);
        output_mas(n);
end.