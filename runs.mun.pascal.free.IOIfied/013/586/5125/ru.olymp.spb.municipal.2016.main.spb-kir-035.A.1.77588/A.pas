var
        n    : longint;
        k, j : longint;
        res  : longint;

begin

        read(n);
        j := 0;
        while(j = 0) do
        begin

                j := n mod 10;
                n := n div 10;

        end;

        while(n > 0) do
        begin

                if(n mod 10 = 0) then
                        res := res + 1;

                n := n div 10;

        end;


        writeln(res);
end.






















































































