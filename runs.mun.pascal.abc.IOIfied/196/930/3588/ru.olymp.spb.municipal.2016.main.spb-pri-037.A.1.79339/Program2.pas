Program dds;
Begin
var k,i, ost, des,y, res,ost2:integer;
var dl :string;
readln(k);
dl:=k.ToString;
y:=dl.Length;
des:=10;
res:=0;
        For i:=1 to y-1 do begin
        ost2:=ost;
        ost:= k mod des;
              if(ost<>0) then begin
             // writeln(ost);
              if (ost2=ost) then res:=res+1;
              end;
              
        des:=des*10;
        end;
writeln(res);


End.