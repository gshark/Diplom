var f,z,a:longint; y,x:string;
begin
        readln(a);
        while a mod 10=0 do a:=a div 10;
        str(a,x);
        y:='0';
        z:=1;
        while z<>0 do begin
        z:=pos(y,x);
        delete(x,z,1);
        f:=f+1;
        end;
        writeln(f-1);
end.
