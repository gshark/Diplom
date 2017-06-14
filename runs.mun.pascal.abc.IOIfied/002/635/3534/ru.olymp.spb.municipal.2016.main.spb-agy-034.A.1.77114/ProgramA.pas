Program p;
var a,k,b,c, i:integer;
begin read(k);
b:=0;
c:=0;
a:=0;
while k<>0 do  begin  if (k mod 10<>0) then   begin  k:=k div 10; 
                                                      c:=1;
                                                       end
                      else if (k mod 10=0) and (c=0) then k:=k div 10
                      else  if (k mod 10=0) and (c<>0) then begin k:=k div 10;
                                                              a:=a+1;
                                                              end;
               end;
writeln(a);
End.