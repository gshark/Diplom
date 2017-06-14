program B;
var input:string;
  input_arr: array of string;
  n, p, q, u, m, t: integer;
  output_arr: array of array[0..1] of integer;
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
  u := 0;
  SetLength(output_arr, u);
  for var g := 1 to (n - 1) do begin
    for var h := 1 to n do begin
      if (not Shortable(g, h)) and (1/p < g/h) and (1/q > g/h) then begin
        SetLength(output_arr, u + 1);
        output_arr[u][0] := g;
        output_arr[u][1] := h;
        u := u + 1;
      end;
    end;
  end;
  
  for var g := 0 to (output_arr.Length - 1) do begin
    for var h := 0 to (output_arr.Length - 1) do begin
      if g = h then continue;
      if (g < h) and (output_arr[g][0]/output_arr[g][1] > output_arr[h][0]/output_arr[h][1]) then begin
        m := output_arr[g][0];
        t := output_arr[g][1];
        output_arr[g] := output_arr[h];
        output_arr[h][0] := m;
        output_arr[h][1] := t;
      end;
    end;
  end;
  
  for u := 0 to (output_arr.Length - 1) do begin
    writeln(output_arr[u][0].ToString() + '/' + output_arr[u][1].ToString());
  end;
end.