Program a;
var k :integer;
begin
writeln (k);
readln ;
if k<100 then
writeln('krasota chisla k =0' );
if ((k mod 100)<10 and (k mod 100)>0 and (k div 100)<10) then;
writeln ('krasota chisla k =1');
if ((k mod 1000)<10 and (k mod 1000)>0 and (k div 1000)<10)then;
writeln ('krasota chisla k =2');
if ((k mod 10000)<10 and (k mod 10000)>0 and (k div 10000)<10)then;
writeln ('krasota chisla k =3');
if ((k mod 100000)<10 and (k mod 100000)>0 and (k div 100000)<10)then;
writeln ('krasota chisla k =4');
if ((k mod 1000000)<10 and (k mod 1000000)>0 and (k div 1000000)<10)then;
writeln ('krasota chisla k =5');
if ((k mod 10000000)<10 and (k mod 10000000)>0 and (k div 10000000)<10)then;
writeln ('krasota chisla k =6');
if ((k mod 100000000)<10 and (k mod 100000000)>0 and (k div 100000000)<10)then;
writeln ('krasota chisla k =7');
if ((k mod 1000000000)<10 and (k mod 1000000000)>0 and (k div 1000000000)<10)then;
writeln ('krasota chisla k =8');
if ((k mod 100)=0)then;
writeln('krasota chisla k =0');
end.