Var S,K,M:longint;
begin
        readln(k);
        while K>0 do begin
                if (k mod 10 = 0) and (m>0) then S:=S+1
                        else if k mod 10 <> 0 then m:=1;
        K:=k div 10;
        end;
        writeln(S);
        Readln(k);
end.

