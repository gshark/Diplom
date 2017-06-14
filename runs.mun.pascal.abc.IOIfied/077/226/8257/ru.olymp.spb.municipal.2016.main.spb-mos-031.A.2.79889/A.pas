var a,c:string;
var b,d:integer;

begin

readln(a);
a:=a+'n';
b:=a.Length;
for var i:= 1 to a.Length do
    begin;
    c:=a[i];
    if c='0'
      then
      d:=d+1;
      //writeln('zxc');
      //else
      //writeln('aaa');
    end;
var n := a.LastIndexOf('n');
var p := a.LastIndexOf('0');
if n-p=1
 then 
 writeln('last is 0');


writeln(d);
writeln(p);
writeln(n);
end.


