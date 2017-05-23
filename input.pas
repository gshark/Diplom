program tnp;
var n,m,i,j,k,left,right,middle:longint;
    a:array[0..10001] of longint;
    max:array[0..5001,0..5001] of longint;
    virus:Array[0..5001] of boolean;
function f(k:longint):boolean;
var i,left,right:longint;
begin
 fillchar(virus,sizeof(virus),false);
 virus[1]:=true;
 left:=2;
 for i:= 1 to n do
  begin
   if virus[i]=false then
    begin
     f:=false;
     exit;
    end;
   if left=n+1 then continue;
   right:=left+k-1;
   if right>n then right:=n;
   if max[left][right]<=a[i] then
    begin
     for j:= left to right do
      virus[j]:=true;
     left:=right+1;
    end else
    begin
     f:=false; exit;
    end;
  end;
 f:=true;
end;


begin
 assign(input,'viruses.in');
 reset(input);
 assign(output,'viruses.out');
 rewrite(output);
 readln(n);
 for i:= 1 to n do
  read(a[i]);
 for i:= 1 to n do
  begin
   max[i][i]:=a[i];
   for j:= i+1 to n do
    if a[j]>max[i][j-1] then max[i][j]:=a[j] else
    max[i][j]:=max[i][j-1];
  end;
 for i:= 1 to 5000 do
  if f(i) then
   begin
    writeln(i);
    halt;
   end;
 writeln(0);
end.
