program B;
var input:string;
  input_arr: array of string;
  n, p, q: integer;
function Shortable(a, b:integer) : boolean;
begin
  Result := False;
  for var x := 2 to Min(a, b) do begin
    if (a mod x = 0) and (b mod x = 0) then Result := True;
  end;
  if (a > b) then Result := True;
end;
begin
  read(input);
  input_arr := input.Split(' ');
  n := StrToInt(input_arr[0]);
  p := StrToInt(input_arr[1]);
  q := StrToInt(input_arr[2]);
  for var g := 1 to (n - 1) do begin
    for var h := 1 to n do begin
      if (not Shortable(g, h)) and (1/p < g/h) and (1/q > g/h) then begin
        writeln(g.ToString + '/' + h.ToString);
      end;
    end;
  end;
end.