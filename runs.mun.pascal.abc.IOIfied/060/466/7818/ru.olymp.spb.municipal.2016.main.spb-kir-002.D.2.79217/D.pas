program D;
var n,k,z,i,j:integer;
kras:array [1..18] of integer;
begin
j:=0;
readln(n,k);
case n of
2: begin
kras[1]:=2;
kras[2]:=2;
end;
3: begin
kras[1]:=8;
kras[2]:=9;
kras[3]:=5;
kras[4]:=9;
kras[5]:=5;
kras[6]:=8;
end;
4: begin
kras[1]:=8+12;
kras[2]:=9+8;
kras[3]:=5+12;
kras[4]:=9+4;
kras[5]:=5+8;
kras[6]:=8+4;
kras[7]:=22;
kras[8]:=23;
kras[9]:=18;
kras[10]:=22;
kras[11]:=15;
kras[12]:=18;
kras[13]:=12;
kras[14]:=15;
kras[15]:=17;
kras[16]:=13;
kras[17]:=17;
kras[18]:=20;
end;
end;
z:=18;
if n=3 then
z:=2;
if n=3 then
z:=6;
for i:=1 to z do
if kras[i] mod k =0 then 
j:=j+1;
writeln (j);
end.