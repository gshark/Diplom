program diagonals;
var input, input2:string;
  input_arr: array of string;
  r, c, q, x, y, z: int64;
  nums: array of string;
begin
  readln(input);
  readln(input2);
  input_arr := input.Split(' ');
  r := StrToInt64(input_arr[0]);
  c := StrToInt64(input_arr[1]);
  q := StrToInt64(input_arr[2]);
  nums := input2.Split(' ');
  x := 1;
  y := 1;
  foreach a:string in nums do begin
    if (x = 1) or (y = r) then begin
      y := 1;
      z := z + 1;
      x := z;
      while (x > c) do begin
        x := x - 1;
        y := y + 1;
      end;
    end
    else begin
      x := x - 1;
      y := y + 1;
    end;
    writeln(y.ToString() + ' ' + x.ToString());
  end;
end.