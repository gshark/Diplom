program A;
var
s:string;
x:integer;
b:boolean;
count1,count2:integer;
begin
readln(s);
b:= false;
count1:= 0;
count2:=0;
x:=1;
if s[1] = '0' then 
     while(true) do
          begin
           if s[x] = '0' then count2:= count2 + 1
               else break;
           x:= x +1;
          end;
for x:= length(s) downto count2+1 do
     begin
      if s[x] <> '0' then b:= true;
      if (b) and (s[x] = '0') then count1:= count1 + 1; 
     end;
writeln(count1);          
end.