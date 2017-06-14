program z1;
var k:string;
    n:integer;
    i:integer;
        begin
       
writeln ('¬ведите число');
readln (k);
 begin  
  n:=0;
  count:=1;
  begin
    for i:=length (k)downto 1 do begin 
    if k[i]='0' then begin
 Delete(var k: string; k[length (k:string)]:integer,count:integer);
 end;
 
      for i:=1 to length (k) do begin
      
      if (k[i]='0') then
      n:=n+1;
  end;
 end;
 writeln (n);
 end;
 end;
 end.

 
 