var n,p,q,i,j,c:integer;
    o:array [1..100] of string;
    a:string;
    pr: array [1..100] of real;
    b:real;
begin
readln(n,p,q);
for i:=1 to n-1 do
  for j:=1 to n-1 do
    begin
    if i mod j <> 0 then
        begin
        if ((1/p)<(j/i)) and ((j/i)<(1/q)) then
            begin
            c:=c+1;
            o[c]:= j + '/' + i;
            pr[c]:=j/i;
            end;
        end;
    end; 
for i:=1 to c do
  for j:=1 to c-1 do
  begin
  if pr[j]>pr[j+1] then
      begin
      b:=pr[j+1];
      a:=o[j+1];
      pr[j+1]:=pr[j];
      o[j+1]:=o[j];
      pr[j]:=b;
      o[j]:=a;
      end;
  end;
for i:=1 to c do
writeln(o[i]);  
end.