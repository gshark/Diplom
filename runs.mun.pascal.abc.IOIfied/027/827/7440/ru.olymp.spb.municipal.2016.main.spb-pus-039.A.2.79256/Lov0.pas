var
  x: string;
  beg: integer;
  en: integer;
  kras: integer;
  i: integer;
  m: boolean;

begin
  kras := 0;
  println('Enter your number:');
  readln(x);
  for i := 1 to length(x) do
  begin
    beg := ord(x[i]) - 48;
    if beg = 0 then
    begin
      if (i <> 1) then 
      begin
        kras := kras + 1;
        if(i = length(x)) then
        begin
          kras := kras - 1;
        end;
      end;
    end;
  end;
  println(kras);
end.