program test;
const
    Author = 'Shovkoplias';
var
    a, b: integer;

procedure tmp();
begin
    writeln('Hi!');
end;

function f(x: integer): integer;
begin
    f := x * x
end;

begin
    read(a, b);
    writeln(f(a) + f(b));
end.