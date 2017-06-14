program zeros;
var input:string; 
  x:integer; 
  output:integer;
begin
  read(input);
  output := 0;
  input := input.TrimEnd('0');
  for x := 1 to input.Length do begin
      if input[x] = '0' then output := output + 1;
  end;
  write(output);
end.