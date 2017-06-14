function isSimple(a,b:integer):boolean;
var i:integer;
f:boolean;
begin
     f:=true;
    for i:=2 to (a+b+1) div 2 do
        if (a mod i = 0) and (b mod i = 0) then
        begin
           f:=false;
           break
        end;
    isSimple:=f;
end;


var
n,q,p,i,j,k,bufi,bufj:integer;
a:array [1..2,1..10000] of integer;

begin
    readln(n,p,q);
    k:=0;
    for i:=2 to n do
    begin

         for j:=1 to i do
         begin
              if (isSimple(i,j)) and (j/i>1/p) and (j/i<1/q)then
              begin
                  inc(k);
                  a[1,k]:=i;
                  a[2,k]:=j

              end;
         end;
    end;
    for i := 2 to k do
    begin
        bufi := a[1,i];
        bufj := a[2,i];
        j := i - 1;
        while (j >= 1) and (a[2,j]/a[1,j] > bufj/bufi) do
        begin
             a[1,j + 1] := a[1,j];
             a[2,j + 1] := a[2,j];
             j := j - 1;
        end;
        a[1,j + 1] := bufi;
        a[2,j + 1] := bufj;
    end;
    for i := 1 to k do
    begin
        writeln(a[2,i],'/',a[1,i]);
    end;
end.