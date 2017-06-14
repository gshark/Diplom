var a,c:string;
var b,d:integer;
begin

readln(a);
//a:=a+'n';
//b:=a.Length;
for var n:= 1 to a.Length do
    begin;
    if a.EndsWith('0')then
  a := a.Remove(a.LastIndexOf('0'));
    end;

for var i:= 1 to a.Length do  
    begin
    c:=a[i];
    if c='0'
      then
      d:=d+1;
      //writeln('zxc');
      //else
      //writeln('aaa');
    end;
//var n := a.LastIndexOf('n');
//var p := a.LastIndexOf('0');

//if n-p=1
//writeln(a.Length);
//writeln(a);
writeln(d);
//writeln(p);
//writeln(n);
end.


