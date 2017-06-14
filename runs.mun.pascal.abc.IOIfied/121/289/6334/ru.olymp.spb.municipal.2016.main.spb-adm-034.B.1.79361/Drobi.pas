program Zadacha_D;//chr(i+96)

var
  n, p, q, i, x, y: byte;
var
  f: real;
  flag:boolean;
begin
flag:=true;
  read(n);read(p);read(q);
  begin
    for i := 1 to n do
    begin
      for x := 1 to i do
      begin
        f := x / i;
        for y := 2 to i do
          if ((x mod y = 0) and (i mod y = 0)) then flag:=false;
          if(f > (1 / p)) and (f < (1 / q)) and flag=true then begin
              writeln(x, '/', i);
              break;
          end;
          flag:=true;
      end;
    end;
  end;
end.