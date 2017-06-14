var 
  n, n1:string;
   k, i, l:integer;
   
begin
  readln(n);
  if pos('0', n)>1 then 
    begin
        k:=0;
        l:=length(n);
        n1:=n;
          while n[l]='0' do
            begin
             n1:=copy(n1, 1, (length(n1)-1));
             l:=l-1;
            end;
  if pos('0', n1)>0 then
    begin
      for i:=1 to length (n1) do
        if n1[i]='0' then k:=k+1;
    end;
    writeln(k);
    end;

end.
    