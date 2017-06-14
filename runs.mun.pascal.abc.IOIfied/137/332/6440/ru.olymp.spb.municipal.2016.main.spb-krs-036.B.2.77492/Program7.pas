function NoDivisors(a,b: integer): boolean;
begin
  result:=True;
  for var x:=2 to min(a,b) do
    if (a mod x=0) and (b mod x=0) then
    begin
      result:=False;
      break;
    end;
end;

begin
  var n,p,q: integer;
  var tobr: boolean;
  var res: array of array[0..1] of integer;
  SetLength(res,0);
  read(n,p,q);
  for var x:=2 to n do
    for var y:=1 to x do
      if (y/x>1/p) and (y/x<1/q) and NoDivisors(x,y) then
      begin
        SetLength(res,res.Length+1);
        res[res.Length-1][0]:=y;
        res[res.Length-1][1]:=x;
      end;
  repeat
    tobr:=True;
    for var x:=0 to res.Length-2 do
      if res[x][0]/res[x][1]>res[x+1][0]/res[x+1][1] then
      begin
        var tmp:=res[x];
        res[x]:=res[x+1];
        res[x+1]:=tmp;
        //swap(res[x],res[x+1]);
        tobr:=False;
      end;
  until tobr;
  foreach var x: array[0..1] of integer in res do
    writeln(x[0],'/',x[1]);
end.