program prgA;
var k2,k,nul:integer;
begin
  nul:=0;
  writeln('Введите К');
  read(k);
  k2:=k;
  if(k>0)
  then
  begin
  while(k2>=10)
  do
  begin
    if((k2 mod 10)=0)
    then 
    begin
    nul:=nul+1;
    end;
    k2:=k2 div 10;
  end;
  if((k mod 10)=0)
  then
  nul:=nul-1;
  nul:=nul-1;
  writeln(nul);
  end;
end.