program AA;
var k:string;
p,m:integer;
begin
   readln(k);
   while k[length(k)]='0' do 
      delete(k,length(k),1);
   repeat
      p:=pos('0',k);
      if p>1 then inc(m);
     delete(k,p,1);
   until p=0;
   write(m);
end.
      