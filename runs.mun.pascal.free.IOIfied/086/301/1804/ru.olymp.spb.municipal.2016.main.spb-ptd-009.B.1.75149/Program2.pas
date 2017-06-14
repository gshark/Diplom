program second;
var n,p,q,znam,chisl,schet1,schet2:integer;
odin,dva,tri:real;
begin
read (n); read(p) ; read(q);
if (n<=100) and (p<=100) and (q <=100) and (q<p)then begin
znam:=p; chisl:=1; schet1:=0; schet2:=0;
while znam < n do begin
if chisl = znam then begin chisl:=1; znam:=znam+1; end; odin:=1/p; dva:=1/q; tri:=chisl/znam;
if (tri > odin) and (tri < dva)then begin schet1:=1; schet2:=1;end; 
if (schet1=1) and (schet2=1) then begin writeln( chisl,'/',znam); schet1:=0; schet2:=0; chisl:=chisl+1; end 
else chisl := chisl+1;
end;
end
else writeln('znach ne verny');
end.