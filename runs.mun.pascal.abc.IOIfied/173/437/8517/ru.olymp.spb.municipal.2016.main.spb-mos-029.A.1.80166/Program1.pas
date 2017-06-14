Program ZadachaA;
   var i,k,c,n,x: longint;
Begin
    writeln('введите число x(от 1 до 10^9)');
    readln(x);
    k:=0;
    c:=0;
    n:=0;
    while (x mod 10=0) do begin
       x:=x div 10;
    end;
    c:=x;
    while (c div 10>1) do begin
       c:=c div 10;
       k:=k+1;
    end;
    For i:=1 to k+1 do begin
       if (x mod 10=0) then begin n:=n+1;
       x:=x div 10;
       end;
       if (x mod 10<>0) then x:=x div 10;
    end;
    writeln('красота числа=',n);
 end.