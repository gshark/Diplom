Program ZadachaA;
  var a,c,d,i,m: integer;
  b: string;
begin
  readln(b);
  d := length(b);
  if b[d] = '0' then m := 1;
  i := d;
  repeat
    if b[i] = '0' then begin
      if m = 0 then c := c + 1;
    end else if m = 1 then m := 0;
    i := i - 1;
  until i = 0;
  writeln(c);
end.