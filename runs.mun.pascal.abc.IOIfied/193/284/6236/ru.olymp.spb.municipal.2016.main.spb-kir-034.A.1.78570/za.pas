var
n, l:longint;
s:string;
d, f:integer;
begin
  read(l);  
  d:=1;
  s:='0'+l;
  delete(s,1,1);
  
  s:=s+'*';
 
  n:=pos('*',s,1);
  delete(s,n,1);
  n:=n-1;

    while d<>0 do
      begin
        if pos('0',s,n)<>0 then
          begin
          delete(s,n,1);
          d:=1;
          n:=n-1;
          end
        else
          d:=0;
      end;
   if pos('0',s,1)=0 then
    begin
      writeln(0);
      exit;
    end;
    n:=pos('0',s,1);
    f:=1;
    n:=n+1;
  {writeln(s);}
    while d<>1 do
      begin
      if pos('0',s,n)<>0 then
        begin
          n:=pos('0',s,n);
          f:=f+1;  n:=n+1;
        end
       else
        d:=1;
      end;
  writeln(f);
  
end.