var a :integer;
var k: integer;
begin
a:=0;
read(k);
begin
k:=k mod 10;if k<0 then a:=a+1;
k:=k mod 100;if k<0 then a:=a+1;
k:=k mod 1000;if k<0 then a:=a+1;
k:=k mod 10000;if k<0 then a:=a+1;
k:=k mod 100000;if k<0 then a:=a+1;
k:=k mod 1000000;if k<0 then a:=a+1;
k:=k mod 10000000;if k<0 then a:=a+1;
k:=k mod 100000000;if k<0 then a:=a+1;
k:=k mod 1000000000;if k<0 then a:=a+1;
k:=k mod 10000000000;if k<0 then a:=a+1;
end;
k:=a;
writeln(k);
end.