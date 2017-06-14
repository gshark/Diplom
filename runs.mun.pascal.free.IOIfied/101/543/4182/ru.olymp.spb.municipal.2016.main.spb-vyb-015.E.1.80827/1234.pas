var     a:array[1..100] of longint;
        B:array[1..10000,1..10000] of longint;
        i,j,r,c,s,q,n:longint;
Begin
        readln(r,c,q);
if c>r then begin
        For i:=1 to r do
        begin
        j:=0;
        while j<i do
                begin
                s:=s+1;
                B[1+j,i-j]:=S;
                j:=j+1;
                end;
        end;

        for i:=r+1 to c do
        begin
        j:=0;
        while j<r do
                begin
                s:=s+1;
                B[1+j,i-j]:=S;
                j:=j+1;
                end;
        end;
               s:=c*r+1;
        For i:=1 to r-1 do
        begin
        j:=0;

        while j<i do
                begin
                S:=s-1;
                B[r-j,c+1-i+j]:=S;
                j:=j+1;
                end;
        end;
        end
else
        begin

        For i:=1 to c do
        begin
        j:=0;
        while j<i do
                begin
                s:=s+1;
                B[1+j,i-j]:=S;
                j:=j+1;
                end;
        end;

        for i:=c+1 to r do
        begin
        j:=0;
        while j<c do
                begin
                s:=s+1;
                B[i-c+1+j,3-j]:=S;
                j:=j+1;
                end;
        end;
       s:=c*r+1;
For i:=1 to c-1 do
        begin
        j:=0;

        while j<i do
                begin
                S:=s-1;
                B[r-j,c+1-i+j]:=S;
                j:=j+1;
                end;
        end;
end;
for n:=1 to q do readln(A[n]);
for n:=1 to q do
For i:=1 to q do
        for j:=1 to q do
                if A[n]=B[i,j] then writeln(i,' ',j);
end.
