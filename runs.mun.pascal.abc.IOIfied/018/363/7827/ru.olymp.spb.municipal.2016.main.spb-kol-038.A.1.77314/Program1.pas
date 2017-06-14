var
  k, b, a: integer;
  m: string;

function zero(k: integer): string;
var
  n: integer;
  s: string;
begin
  s := '';
  while k <> 0 do 
  begin
    n := k mod 2;
    k := k div 2;
    s := s + (IntToStr(n));
  end;
  zero := s;
end;

begin
  readln(k);
  b := length(IntToStr(k));
  m:=zero(k);
  for i: integer := 2 to b - 1 do 
  begin
    if m[i] = '0' then a := a + 1;
  end;
  writeln(a);
end.