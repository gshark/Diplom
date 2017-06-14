program sas;
var a,b : int64;
begin
read(a);
while a mod 10 = 0
do
a:= a div 10;

while a div 10 > 0
  do
    if a mod 10 = 0
    then
    begin 
    b:= b+1;
    a:= a div 10
    end
    else
    a:= a div 10;
    


writeln(b);
end.
