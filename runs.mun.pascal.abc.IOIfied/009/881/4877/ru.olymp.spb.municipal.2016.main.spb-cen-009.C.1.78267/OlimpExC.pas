program n_nyamcat;
var n,i,m,x,l1,l2:integer;
begin
read(n);
x:=random(4);
for i:=1 to n do //write('///',x,' ');
 begin
 l1:=random(2);
 if l1=0 then x:=x+1;
 if l1=1 then x:=x-1;
 if x=-1 then x:=3;
 if x=4 then x:=0;
 if x=0 then write('a');
 if x=1 then write('b');
 if x=2 then write('c');
 if x=3 then write('b');
  for m:=2 to n do
   begin 
    l2:=random(2);
    if l2=0 then 
     begin 
      x:=x+1;
      if x=4 then x:=0;
      if x=0 then write('a');
      if x=1 then write('b');
      if x=2 then write('c');
      if x=3 then write('b');
     end;
    if l2=1 then
     begin 
      x:=x-1;
      if x=-1 then x:=3;
      if x=0 then write('a');
      if x=1 then write('b');
      if x=2 then write('c');
      if x=3 then write('b');
     end;
   end;
  writeln();
 end;
end.