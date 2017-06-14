Var  A:array[1..100] of char;
        B:array[1..100,1..100] of char;
n,m,k,i,j:integer;

begin
Readln(m);
A[1]:='a';  A[2]:='b';A[3]:='c';A[4]:='d';A[5]:='e';A[6]:='f';A[7]:='g';A[8]:='h';A[9]:='i';A[10]:='j'; A[11]:='k';A[12]:='l';A[13]:='m';A[14]:='n';A[15]:='o';A[16]:='p';A[17]:='q';A[18]:='r';A[19]:='s'; A[20]:='t';  A[21]:='u'; A[22]:='v'; A[23]:='w';
A[24]:='x'; A[25]:='y'; A[26]:='z';
For n:=27 to 100 do A[n]:=A[n-26];
//
        for i:=1 to m div 2 do begin
                k:=1; B[I,i]:=A[1]; B[i,m-i+1]:=A[1]; B[m-I+1,i]:=A[1]; B[m-i+1,m-i+1]:=A[1];
                while k<i do begin B[i,i-k]:=A[k+1]; B[m-i+1,i-k]:=A[k+1]; B[m-i+1,m-i+1+k]:=A[k+1]; B[i,m-i+1+k]:=A[k+1]; k:=k+1; end; k:=1;
                while i+k<=m div 2 do begin B[i,i+k]:=A[k+1]; B[m-i+1,i+k]:=A[k+1]; B[i,m-i+1-k]:=A[k+1]; B[m-i+1,m-i+1-k]:=A[k+1]; k:=k+1; end; k:=1;
                end;
        If m mod 2 = 1 then begin i:=(m div 2)+1; B[i,i]:=A[1]; n:=i;
                for K:=1 to i-1 do begin
                        B[n,n+k]:=A[k+1];
                        B[n,n-k]:=A[k+1];
                        B[n+k,n]:=A[k+1];
                        B[n-k,n]:=A[k+1];
                        end; end;
for i:=1 to m do begin
        for j:=1 to m do
                write(B[i,j]);
        writeln;
        end;
readln;
end.