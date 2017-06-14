var
  k: array of string;
  count:=1;
  n: integer;
  alp:='abcdefghijklmnopqrstuvwxyz'.ToCharArray;

function num(a: integer):=alp[a mod 26];

function neib(x,y: integer; c: char): boolean;
begin
  result:=False;
  for var a:=Max(1,x-1) to Min(x+1,n) do
    for var b:=Max(1,y-1) to Min(y+1,n) do
    if (k[a-1][b]=c) and ((a=x) or (b=y)) then result:=True;
end;

begin
  read(n);
  SetLength(k,n);
  for var x:=0 to n-1 do
    SetLength(k[x],n);
  for var x:=1 to n do
  begin
    k[x-1][x]:=alp[0];
    k[n-x][x]:=alp[0];
  end;
  
  var done:=True;
  repeat
    done:=True;
    for var x:=1 to n do
      for var y:=1 to n do
        if neib(x,y,num(count-1)) and k[y-1][x].Equals(' ') then
        begin
          k[y-1][x]:=num(count);
          done:=False;
        end;
    count+=1;
  until done;
  
  for var x:=0 to n-1 do
    writeln(k[x]);
end.