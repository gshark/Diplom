program z2;
var n,p,q,i,f,c,j:integer;
fm: array [1..100] of integer;
im: array [1..100] of integer;
ki, kf:integer;
begin
readln(n,p,q);
c:=1;
for i:=1 to n do begin
for f:=1 to 100 do begin
if ((f/i) > (1/p)) and ((f/i)<(1/q)) then begin
if ((f mod 2 = 0) and (i mod 2 = 0)) or ((f mod 3 = 0) and (i mod 3 = 0)) or ((f mod 5 = 0) and (i mod 5 = 0)) or ((f mod 6 = 0) and (i mod 6 = 0)) or ((f mod 7 = 0) and (i mod 7 = 0)) or ((f mod 10 = 0) and (i mod 10 = 0)) then begin end else begin
fm[c]:=f;
im[c]:=i;
inc(c);
end;
end;
end;
end;



for i:=1 to c-1 do
for j:=1 to c-i do 
if ((fm[j]/im[j])>(fm[j+1]/im[j+1])) then begin
kf:=fm[j]; ki:=im[j];
fm[j]:=fm[j+1]; im[j]:=im[j+1];
fm[j+1]:=kf; im[j+1]:=ki;
end;

for i:=1 to c-1 do writeln(fm[i],'/',im[i]);

end.