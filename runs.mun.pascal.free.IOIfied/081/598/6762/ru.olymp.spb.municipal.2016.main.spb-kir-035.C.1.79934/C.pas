var
        a    : array[1..200, 1..200] of char;
        k, j : integer;
        n    : integer;

procedure show;
var
        k, j : integer;

begin

        for k := 1 to n do
        begin

                for j := 1 to n do
                        write(a[k,j]);

                writeln('');

        end;
        writeln('');
        readln;

end;

procedure proc(c : char; x, y : integer; b : boolean);
begin

        if((x > 0) and (y > 0) and (x <= 5) and (y <= 5)) then
        if(a[y, x + 1] = '0') then
        begin

                a[y, x + 1] := c;

        end;

        if((x-1 > 0) and (y > 0) and (x-1 <= 5) and (y <= 5)) then
        if(a[y, x - 1] = '0') then
        begin

                a[y, x - 1] := c;

        end;

        if((x > 0) and (y+1 > 0) and (x <= 5) and (y+1 <= 5)) then
        if(a[y + 1, x] = '0') then
        begin

                a[y + 1, x] := c;

        end;

        if((x > 0) and (y-1 > 0) and (x <= 5) and (y-1 <= 5)) then
        if(a[y - 1, x] = '0') then
        begin

                a[y - 1, x] := c;

        end;


        if((x > 0) and (n-y+1 > 0) and (x <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x + 1] = '0') then
        begin

                a[n-y+1, x + 1] := c;

        end;

        if((x-1 > 0) and (n-y+1 > 0) and (x-1 <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x - 1] = '0') then
        begin

                a[n-y+1, x - 1] := c;

        end;

        if((x > 0) and (n-y+1+1 > 0) and (x <= 5) and (n-y+1+1 <= 5)) then
        if(a[n-y+1 + 1, x] = '0') then
        begin

                a[n-y+1 + 1, x] := c;

        end;

        if((x > 0) and (n-y+1-1 > 0) and (x <= 5) and (n-y+1-1 <= 5)) then
        if(a[n-y+1 - 1, x] = '0') then
        begin

                a[n-y+1 - 1, x] := c;

        end;



        if(b) then begin


        if((x > 0) and (y > 0) and (x <= 5) and (y <= 5)) then
        if(a[y, x + 1] = c) then
        begin

                proc(chr(ord(c) + 1), x+1, y, false);

        end;

        if((x-1 > 0) and (y > 0) and (x-1 <= 5) and (y <= 5)) then
        if(a[y, x - 1] = c) then
        begin

                proc(chr(ord(c) + 1), x-1, y, false);

        end;

        if((x > 0) and (y+1 > 0) and (x <= 5) and (y+1 <= 5)) then
        if(a[y + 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, y+1, false);

        end;

        if((x > 0) and (y-1 > 0) and (x <= 5) and (y-1 <= 5)) then
        if(a[y - 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, y-1, false);

        end;

        if((x > 0) and (n-y+1 > 0) and (x <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x + 1] = c) then
        begin

                proc(chr(ord(c) + 1), x+1, n-y+1, false);

        end;

        if((x-1 > 0) and (n-y+1 > 0) and (x-1 <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x - 1] = c) then
        begin

                proc(chr(ord(c) + 1), x-1, n-y+1, false);

        end;

        if((x > 0) and (n-y+1+1 > 0) and (x <= 5) and (n-y+1+1 <= 5)) then
        if(a[n-y+1 + 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, n-y+1+1, false);
        end;

        if((x > 0) and (n-y+1-1 > 0) and (x <= 5) and (n-y+1-1 <= 5)) then
        if(a[n-y+1 - 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, n-y+1-1, false);
        end;
        {...............................................................}
        if((x > 0) and (y > 0) and (x <= 5) and (y <= 5)) then
        if(a[y, x + 1] = c) then
        begin

                proc(chr(ord(c) + 1), x+1, y, true);

        end;

        if((x-1 > 0) and (y > 0) and (x-1 <= 5) and (y <= 5)) then
        if(a[y, x - 1] = c) then
        begin

                proc(chr(ord(c) + 1), x-1, y, true);

        end;

        if((x > 0) and (y+1 > 0) and (x <= 5) and (y+1 <= 5)) then
        if(a[y + 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, y+1, true);

        end;

        if((x > 0) and (y-1 > 0) and (x <= 5) and (y-1 <= 5)) then
        if(a[y - 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, y-1, true);

        end;

        if((x > 0) and (n-y+1 > 0) and (x <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x + 1] = c) then
        begin

                proc(chr(ord(c) + 1), x+1, n-y+1, true);

        end;

        if((x-1 > 0) and (n-y+1 > 0) and (x-1 <= 5) and (n-y+1 <= 5)) then
        if(a[n-y+1, x - 1] = c) then
        begin

                proc(chr(ord(c) + 1), x-1, n-y+1, true);

        end;

        if((x > 0) and (n-y+1+1 > 0) and (x <= 5) and (n-y+1+1 <= 5)) then
        if(a[n-y+1 + 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, n-y+1+1, true);
        end;

        if((x > 0) and (n-y+1-1 > 0) and (x <= 5) and (n-y+1-1 <= 5)) then
        if(a[n-y+1 - 1, x] = c) then
        begin

                proc(chr(ord(c) + 1), x, n-y+1-1, true);
        end;


        end;

end;

begin

        read(n);

        for k := 1 to n do

                for j := 1 to n do
                        a[k, j] := '0';

        for k := 1 to n do
        begin
                a[k, k] := 'a';
                a[k, n-k+1] := 'a';

        end;


        for k := 1 to n do

                proc('b', k, k, false);

        for k := 1 to n do

                proc('b', k, k, true);






        show;

end.
