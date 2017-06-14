Var  A:array[1..100] of byte;
        B:array[1..4,1..10000] of byte;
        m,n,k,i,j,d,s,p,q:integer;

begin
readln(n,p,q);
        for i:=1 to 100 do A[i]:=i;

for i:=1 to n do
        for j:=i+1 to n do
                if (A[i]/A[j]>1/p) and (A[i]/A[j]<1/q) then begin
                        for K:=2 to i do
                                if (A[i] mod k = 0) and (A[j] mod k = 0) then d:=1;
                        if d=0 then begin s:=s+1; B[1,s]:=i; B[2,s]:=j; end
                        else d:=0;
                        end; k:=0;
while k<s do
        for i:=1 to s do begin
                for j:=1 to s do
                        if B[1,i]/B[2,i]>B[1,j]/B[2,j] then d:=1;
                if d=0 then begin K:=k+1; B[3,k]:=B[1,i];  B[4,k]:=B[2,i]; B[1,i]:=1;B[2,i]:=1;  end
                else d:=0;
                end;
for i:=1 to s do writeln(B[3,i],'/',B[4,i]);
readln;
end.
