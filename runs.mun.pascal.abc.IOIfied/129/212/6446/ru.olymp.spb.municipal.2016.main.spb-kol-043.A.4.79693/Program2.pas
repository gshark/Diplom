program z1;

var
  k: string;
  n: integer;
  i,j: integer;
  count: integer;
  sum:integer;

begin
  n:=0;
  count:=0;
  writeln('������� �����');
  readln(k);
  begin
  
    for j := length(k) to 1 do begin
    repeat count:=count+1 
    until k[j]<>'0';
      end;
      
    
    end;
    
    for i := 1 to (length(k))do 
    begin
      
      if (k[i] = '0') then
        n := n + 1;
    end;
    
  sum:=n-count;
  writeln(sum);
  
  
end.