var
 answer : integer;
 flag : boolean;
 S : string;
begin
 Read(s);
 for var i := s.Length downto 1 do
  begin
   if (s[i] = '0') and (flag) then
    Inc(answer);
   if (s[i] <> '0') and not (flag) then
    flag := true;
  end;
 Write(answer);
end.