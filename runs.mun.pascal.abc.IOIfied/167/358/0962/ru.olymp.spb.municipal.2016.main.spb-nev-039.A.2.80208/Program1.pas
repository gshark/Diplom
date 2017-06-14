
program Z;
var  n,i,b:longint;
     flag:boolean;
begin
  writeln('input n');
  readln(n);
  flag:=false;
  i:=0;
  if (1<=n)and(n<=exp(9*ln(10)))then
     while n>0 do  begin
               if(flag=true)then   begin
                 if (n mod 10=0)then
                 i:=i+1;
                 end;
                     if(n mod 10 <> 0)then flag:=false
                 else      flag:=true;

                n:=n div 10;
                end;
                 writeln(flag);
       writeln(i,' красивых нулей');
  readln;
   end.