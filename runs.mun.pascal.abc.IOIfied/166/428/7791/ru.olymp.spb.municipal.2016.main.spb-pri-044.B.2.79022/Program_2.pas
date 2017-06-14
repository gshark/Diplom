var n,v,i,j:integer;
    p,q,c,max:real;
    a,b,c_m:array [1..100] of real;

procedure sort(v:integer);
var j,i,min,min_i,n:integer;
a:real;
begin

  for i:=v downto 1 do
    for j:=v downto 1 do
      if c_m[j] <c_m[j+1] then
      begin
        a:= c_m[j];
        c_m[j]:= c_m[j+1];
        c_m[j+1]:=a;
      end;
  
end;
 
begin
  v:=1;
  read(n,p,q);
  p := 1 / p;
  q := 1 / q;
  for i:= 1 to n-1 do
    for j:= 1 to i do 
    begin 
      c:= j / i;
      if (trunc(c)  = 0) and (c > p) and (c < q) then
      begin
        a[v]:=i;
        b[v]:=j;
        c_m[v]:=c;
        inc(v);
      end;
    end;  
 
  sort(v);
  
  for i:=1 to v-1 do
  for j:=1 to v do if c_m[v-i] = b[j] / a[j] then writeln(b[j], '/', a[j]);
   
  //for i:=1 to v-1 do writeln(b[i], '/', a[i]); 
end.