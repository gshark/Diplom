program A;

var
  k, n, i, d, t, pr, l, m: longint;
  p: real;

begin
  readln(k);
  pr := 10;
  n:=0;
  i:=0;
  
   t := 0; 
  while (k mod pr = 0) do
  begin
    t := t + 1;
    pr := pr * 10;
  end;
  
  k:=k div pr;
  writeln(k);
  
  While (i<9)do
   begin
    pr:= pr*10;
    if (k mod pr=0) then
     n:=n+1;
    i:=i +1;
   end; 
  
  
  
  writeln(n, d, t);
  
  
  n := n - d - t;
  writeln(n); 
  
end.