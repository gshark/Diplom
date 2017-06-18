program test;
const
    Author = 'Shovkoplias';
var
    a, b: int64;
procedure tmp();
begin
    writeln('Hi!');
end;

function f(x: int64): int64;
begin
    f := x * x
end;

begin
    read(a, b);
    writeln(f(a) + f(b));
end.