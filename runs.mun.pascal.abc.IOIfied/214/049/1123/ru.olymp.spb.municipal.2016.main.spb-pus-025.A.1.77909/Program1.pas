program nulls;

var
 str: string;
 counter, l, input, res: integer;

begin
  Readln(input);
  while input mod 10 = 0 do input := input div 10;
  str := IntToStr(input);
  l := length(str);
  for counter := 1 to l do 
    if str[counter] = '0' then
      Inc(res);
  Writeln(res);
end.