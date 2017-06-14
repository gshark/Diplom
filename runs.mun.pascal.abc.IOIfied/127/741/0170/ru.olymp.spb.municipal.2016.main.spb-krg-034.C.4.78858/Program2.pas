program a;
var n, i, ln_cout: integer;
  line: array of string;
  lnrev: string;
begin
readln(n);
i:=1;
SetLength(line,n+1);
for ln_cout:=1 to n do
  begin
  while (n div 2>=i) do
    begin
      if (i=1) then line[ln_cout]:=(line[ln_cout]+'a') else line[ln_cout]:=(line[ln_cout]+chr(96+i));
      i:=i+1;
    end;
    lnrev:=ReverseString(line[ln_cout]);
    if (n mod 2 = 1) then line[ln_cout]:=(line[ln_cout]+chr(96+i));
    line[ln_cout]:=line[ln_cout]+lnrev;
    if (ln_cout=n) then writeln(line[1]) else writeln(line[ln_cout]);
  end;
  
end.