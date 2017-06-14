
var a : array [1..10] of integer;
var i,z,err : integer;
var inp,outp : text;
var k,x : string;

begin

assign(inp,'input.txt');
assign(outp,'output.txt');
reset(inp);
rewrite(outp);


read(k);
//readln(inp,k);


z:=0;
err:=0;

for i:=length(k)  downto 1 do
    begin
         if ((err=0) and (k[i]='0')) then continue;
         if ((err=0) and (k[i]<>'0')) then err:=1;
         if ((err=1) and (k[i]='0')) then inc(z);
    end;

writeln(z);
//writeln(outp,z);

close(inp);
close(outp);
end.
