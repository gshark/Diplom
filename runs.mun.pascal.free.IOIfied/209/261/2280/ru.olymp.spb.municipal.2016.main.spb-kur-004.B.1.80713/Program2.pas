var a,b,j: integer;
var p,q:integer;
var x,n:integer;
var i,i2,i3:integer;
var ch,z:array[1..100]of single;
var k:single;
label m1;
begin
read(n,p,q);
x:=1;
for i:=1 to n do
begin
  for i2:=1 to n-1 do
    begin
    if (i2=1) and (i=1) then goto m1;
    
    
      m1:;
      a:=i2;
      b:=i;
      repeat
            if a > b then
                a := a mod b
            else
                b := b mod a;
        until (a = 0) or (b = 0);
        if a+b = 1 then
        begin
        if (1/p < i/i2) and (i/i2 < 1/q) then
        begin
        ch[x]:=i;
        z[x]:=i2;
        x:=x+1
        end;
        end;
    
  end;
end;    
 for i3 := 1 to 100-1 do
        for j := 1 to 100-i3 do
            if ch[j]/z[j] > ch[j+1]/z[j+1] then 
            begin
                k := ch[j];
                ch[j] := ch[j+1];
                ch[j+1] := k;
                k := z[j];
                z[j] := z[j+1];
                z[j+1] := k;
            end;
 i3:=1;    
 for i3:=1 to 100 do
 if ch[i3]<>0 then
 writeln(ch[i3],'/',z[i3]);
    
 

end.