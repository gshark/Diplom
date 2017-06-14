program OlimpA; 

var
  i, k, ko: integer; f: boolean;  
  s: string; 

begin
  f := false; 
  readln(s);  
  
  for i := length(s) downto 1 do
  begin
    if (s[i] = '0') and (f = false) then
      ko := ko + 1
    else 
      f := true;
    
    if s[i] = '0' then
      k := k + 1; 
  end;
  k:= k - ko; 
  
  write(k);
end.