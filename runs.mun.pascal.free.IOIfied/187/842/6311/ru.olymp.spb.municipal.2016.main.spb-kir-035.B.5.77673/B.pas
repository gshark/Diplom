var
        n, p, q         : integer;
        k, j            : integer;
        s1, s2          : String;
        ak, aj          : array[1..100000] of integer;
        an              : longint;
        temp            : integer;

function mayShorten(j, k : integer) : boolean;
var
        i       : integer;
        res     : boolean;

begin

        res := false;

        if((k <> 0) and (j <> 0)) then
        for i := 2 to k do

                if((k mod i = 0) and (j mod i = 0)) then
                begin

                        res := true;
                        break;

                end;

        mayShorten := res;

end;

begin

        read(n, p, q);

        an := 0;

        for k := 1 to n do
        begin

                j := 1;
                while(j / k < 1 / q) do
                        j := j + 1;

                j := j -1;
                if(j = 0) then
                        continue;

                while(j / k > 1 / p) do
                begin

                        if(not(mayShorten(j, k))) then
                        begin

                                an := an + 1;
                                aj[an] := j;
                                ak[an] := k;

                        end;
                        j := j - 1;

                end;

        end;


         for k := 1 to an do

                for j := 1 to an - k do

                        if(aj[j]/ak[j] > aj[j+1]/ak[j+1]) then
                        begin

                                temp := aj[j];
                                aj[j] := aj[j+1];
                                aj[j+1] := temp;

                                temp := ak[j];
                                ak[j] := ak[j+1];
                                ak[j+1] := temp;

                        end;




        for k := 1 to an do
        begin
                str(aj[k], s1);
                str(ak[k], s2);
                writeln(s1, '/', s2);
        end;

end.
