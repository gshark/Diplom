program pr1;
var a,i,varr,va,res:integer;
arr: array [1..10] of integer;
flagPart1,flagPart2,flagPart3:boolean;
begin
  flagPart1:=true;
  flagPart2:=false;
  flagPart3:=false;
  readln (a);
  for i:=9 downto 0 do
  begin
  va:=1;
  for varr:=1 to i do
    va:=va*10;
  arr[10-i]:=((a div (va) )mod 10);
  end;
  
  for i:=1 to 10 do
  begin
    if (flagPart1) then
    begin
      if (not(arr[i] = 0))then
      begin
        flagPart1:= false;
        flagPart2:= true;
      end
      else
        arr[i] := -1;
    end
  end;
  
  for i:=10 downto 1 do
  begin
    if (flagPart2) then
    begin
      if (not(arr[i] = 0))then
      begin
        flagPart1:= false;
        flagPart2:= false;
        flagPart3:= true;
      end
      else
        arr[i] := -1;
    end
  end;
  res:=0;
  for i:=1 to 10 do
  begin
    if (arr[i]=0)then
      res:=res+1;
  end;
  writeln (res);
end.