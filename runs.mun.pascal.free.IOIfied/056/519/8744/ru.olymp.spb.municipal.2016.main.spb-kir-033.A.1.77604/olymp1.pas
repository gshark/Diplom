var str : string;
num : integer;

function val_0(str : string) : integer;
var i, count : integer;
begin

     count:=0;
     for i:=1 to length(str) do
         if str[i] = '0' then count:=count+1;
     val_0:=count;
end;

function val_0_last(str : string) : integer;
var count, i : integer;
begin
     count:=0;
     for i:=length(str) downto 1 do
         if str[i] = '0' then count:=count+1
            else break;
     val_0_last := count;

end;

begin
     readln(str);
     num:=val_0(str)-val_0_last(str);
     writeln(num);
end.
