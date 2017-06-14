var r,c,q:integer;
var pr: array [,] of integer;
var k: array of integer;
var n:integer;
var i,j,m,mt,x,y: integer;

Begin
  readln(r,c,q);
  pr := new integer[r,c];
  k  := new integer [q];
  for n:=0 to q-1 do
    begin
      read(k[n]);  
    end;

  n:=1;
  m:=0;
    
   for i:=0 to c-1 do
    begin
             x:=i;
         y:=0;
         repeat
         pr[y,x]:=n;
         inc(n);
         dec(x);
         inc(y);
         if ((x<0) or (y>r-1)) then
         begin
         break;
         end;
         until (1>1);
    end;
    

  for n:=1 to q do
    for i:= 0 to r-1 do
      for j:=0 to c-1 do
        begin
        if pr[i,j]= n then
          writeln(i+1,' ',j+1);
        end;
    
    writeln(1);
end.