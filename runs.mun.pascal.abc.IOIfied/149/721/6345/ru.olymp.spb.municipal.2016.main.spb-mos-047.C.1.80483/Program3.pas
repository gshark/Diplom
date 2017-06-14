program abc;
var a,r,n:integer;
begin
readln(n);
for k:integer:=0 to n-1 do
  begin
        if n div 2 >k then r:=k
        else r:=n-k-1;
        a:=(n div 2)-r;
    for b:integer:=r downto 1 do
      write(chr(ord('a')+b));
    
    
    while a>=26 do
      begin
      for b:integer:=0 to 25 do
        write(chr(ord('a')+b));
      a:=a-26;
      end;
    
    
    
    for b:integer:=0 to a-1 do
      write(chr(ord('a')+b)); 
    if n mod 2<>0 then write(chr(ord('a')+a));
    
    for b:integer:=0 to a-1 do
      write(chr(ord('a')+a-1-b));
      
      
      
    a:=n div 2;
    while a>=26 do
      begin
      for b:integer:=0 to 25 do
        write(chr(ord('z')-b+r));
      a:=a-26;
      end;
     
    for b:integer:=1 to r do
      write(chr(ord('a')+b));
      
    writeln(' ');
    end;
  end.
      
    
    
    