program A;
var s: string;
    n, c, x, p: longint;
begin
writeln('ведите число k');
readln(s);
c:=StrToInt(s);
s:=IntToStr(c);
x:=pos('0', s);
p:=Length(s);
if (c>0) and (x>0) and (c<>10) and (c<>100) and (c<>1000) and (c<>10000) and (c<>100000) and (c<>1000000) and (c<>10000000) and (c<>100000000) and (c<>1000000000) then
  begin
  if ((C mod 10)=0) then
    begin
    repeat
      begin
        if ((C mod 10)=0) then
           begin
           Delete(s, p, 1);
            c:=StrToInt(s);
            p:=Length(s)
            end;
      end
    until ((c mod 10)<>0);
    x:=pos('0', s);
  end;
  p:=Length(s);
if (x>0) then
p:=Length(s);
  begin 
  if ((C mod 10)<>0) and (c>10) then
    begin
    repeat
    if ((C mod 10)<>0) then
      begin
      Delete(s, p, 1);
      c:=StrToInt(s);
      p:=Length(s)
      end
    until ((C mod 10)=0);
    x:=pos('0', s);
    p:=Length(s)
    end;
  end;
  if (x>0) then 
    begin
    s:=Copy(s, x, p+1-x);
    n:=Length(s);
    end
  else n:=0;
  end
else n:=0;
writeln('Красота числа', n)
end.
