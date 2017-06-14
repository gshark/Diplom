var n,i,j:integer;
a: array [1..26] of char := ('a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z');
b:array [1..100,1..100] of char;  

begin
readln(n);
for i:=1 to ((n div 2) + (n mod 2)) do begin
  for j:=1 to ((n div 2) + (n mod 2)) do begin     
  b[i,j]:= a[(abs(i-j)+1) mod 27 + (abs(i-j)+1) div 27];
  end;
end;
 for i:= ((n div 2) + (n mod 2))+1 to n do begin
  for j:=1 to ((n div 2) + (n mod 2)) do begin 
  b[i,j]:=b[n-i+1,j] ;
  end;
 end;
 for i:= 1 to ((n div 2) + (n mod 2)) do begin
  for j:=((n div 2) + (n mod 2))+1 to n do begin 
  b[i,j]:=b[i,n-j+1] ;
  end;
 end;
  for i:= ((n div 2) + (n mod 2))+1 to n do begin
  for j:=((n div 2) + (n mod 2))+1 to n do begin 
  b[i,j]:=b[n-i+1,n-j+1] ;
  end;
 end;

for i:=1 to n do begin
for j:=1 to n do begin
write(b[i,j]);
end;
writeln();
end;

end.