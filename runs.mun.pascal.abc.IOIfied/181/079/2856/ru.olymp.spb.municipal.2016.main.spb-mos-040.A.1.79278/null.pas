var
str: string;
flag, i, l, counter: int64;
begin
  read(str);
  l:= length(str);
  flag:= 0;
  for i:= l downto 1 do begin
    if str[i] <> '0' then begin
      flag:= 1;
    end;
    if (str[i] = '0') and (flag = 1) then begin
      inc(counter);
    end;
  end;
  write(counter);
end.
    
  