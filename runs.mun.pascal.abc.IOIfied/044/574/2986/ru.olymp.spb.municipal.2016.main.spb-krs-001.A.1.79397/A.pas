program A;
var chislo, k, cifra:integer;
flag:boolean;
begin
readln(k);
flag:=false;
 while(k>1) do begin
 cifra:=k mod 10;
   if (flag=false) then begin
   if (cifra=0) then flag:=false
   else flag:=true;
   end;
   if (flag=true) then begin
   if (cifra=0) then chislo:=chislo+1;
   end;
   k:=k div 10;
   end;
   writeln(chislo);
   end.