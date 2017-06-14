var
  i, N, ch, p, l, r, sum, t: integer;

begin
  read(N);
  ch := 0;
  t := N;
  
  while (t > 0) do
  begin
    ch:=ch+1;
    if (t mod 10 > 0) then 
    begin
      r := ch;
      break;
    end;
    t := t div 10;
  end;
  
  ch:=0;
  t:= N;
  
  while (t > 0) do
  begin
  ch:=ch+1;
    if (t mod 10 > 0) then 
      l := ch;
    t := t div 10;   
  end;
  
  ch:=0;
  p:=0;
  
  while (N > 0) do
  begin
  p:=p+1;
    if (N mod 10 = 0) and (p < l) and (p > r) then
      ch := ch + 1;
    N := N div 10;
  end;
  writeln(ch);
end.