var n:integer;
var p:integer;
var q:integer;
var i:integer;
var j:integer;
var f:real;
var s:real;
var r:real;
var v: array [1..1000] of integer;
var v2: array [1..1000] of integer;
var v3:array [1..1000] of real;
var v4:integer;
var q1:real;
begin
v4:=1;
read(n,p,q);
f:=1/p;
s:=1/q;
for i:= 1 to n do begin
for j:=1 to n do begin
r:=i/j;
if (i mod j<>0) and (i<j) and(j<n) and (r<s) and (r>f) and(i<>j) then begin
if (i mod 2=0) and (j mod 2 =0) then begin
break;
end;
if (i mod 3=0) and (j mod 3 =0) then begin
break;
end;
if (i mod 5=0) and (j mod 5 =0) then begin
break;
end;
if (i mod 7=0) and (j mod 7 =0) then begin
break;
end;
if (i mod 11=0) and (j mod 11 =0) then begin
break;
end;
if (i mod 13=0) and (j mod 13 =0) then begin
break;
end;
if (i mod 17=0) and (j mod 17 =0) then begin
break;
end;
if (i mod 19=0) and (j mod 19 =0) then begin
break;
end;
if (i mod 23=0) and (j mod 23 =0) then begin
break;
end;
if (i mod 29=0) and (j mod 29 =0) then begin
break;
end;
if (i mod 31=0) and (j mod 31 =0) then begin
break;
end;
if (i mod 37=0) and (j mod 37 =0) then begin
break;
end;
if (i mod 41=0) and (j mod 41 =0) then begin
break;
end;
if (i mod 43=0) and (j mod 43 =0) then begin
break;
end;
if (i mod 47=0) and (j mod 47 =0) then begin
break;
end;
if (i mod 53=0) and (j mod 53 =0) then begin
break;
end;
v[v4]:=i;
v2[v4]:=j;
v3[v4]:=i/j;
v4:=v4+1;
end;
end;
end;
for i:=1 to v4-1 do begin
for j:= i to v4-1 do begin
if v3[j+1]<v3[i] then  begin
q1:=v3[i];
v3[i]:=v3[j+1];
v3[j+1]:=q1;

q:=v2[i];
v2[i]:=v2[j+1];
v2[j+1]:=q;

q:=v[i];
v[i]:=v[j+1];
v[j+1]:=q;
end;
end;
end;
for i:=1+1 to v4 do begin
writeln(v[i], '/',v2[i]);
end;
end.