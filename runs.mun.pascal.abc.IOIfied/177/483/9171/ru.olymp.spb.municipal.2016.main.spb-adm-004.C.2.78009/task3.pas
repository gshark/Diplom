program task3;
var n:integer;
var i,k,c:integer;
var str:string;
procedure emptystr();
var i:integer;
begin
 str:= '';
 for i:= 1 to n do insert(' ',str,1);
end;
function up(start, finish:integer):char;
var ch:char; i:integer;
begin
 i:= start;
 repeat
   for ch:= 'a' to 'z' do
   begin
    str[i]:= ch;
    inc(i);
    if (i > finish) then break;
   end;
 until i > finish;
 up:= ch;
end;
procedure down(start, finish:integer);
var ch:char; i:integer;
begin
 i:= finish;
 repeat
   for ch:= 'a' to 'z' do
   begin
    str[i]:= ch;
    dec(i);
    if (i < start) then break;
   end;
 until i < start;
end;
Begin
 readln(n);
 c:= round(n / 2);
 if (n mod 2 <> 0) then inc(c);
 k:= 1;
 for i:= 1 to c do
 begin
  emptystr();
  if (k = 1) or (k = n) then
  begin
   up(1,c);
   down(c+1,n);
  end
  else 
  begin
   down(1,k);
   up(k,c);
   down(c+1,n-k+1);
   up(n-k+1, n);
  end;
  writeln(str);
  inc(k);
 end;
 if n mod 2 <> 0 then k:= c - 1 else k:= c;
 for i:= c+1 to n do
 begin
  emptystr();
  if (k = 1) or (k = n) then
  begin
   up(1,c);
   down(c+1,n);
  end
  else 
  begin
   down(1,k);
   up(k,c);
   down(c+1,n-k+1);
   up(n-k+1, n);
  end;
  writeln(str);
  dec(k);
 end;
 
End.