program sd;
var
n,c,   i, r, ro,  co, iter, q, buf: int64;
begin
  readln(r, c, q);
  
  if r < c then
  begin
    for i := 1 to q do
    begin
      read(n);
      if n <= (r - 1) * r / 2 then
      begin
        iter:=1;
        while iter*(iter+1) div 2 < n do inc(iter);
        ro := n - (iter - 1) * iter div 2;
        co := iter - ro +1;
      end else if n>r * c - (r - 1) * r div 2 then
      begin
        buf := r * c - n;
        iter:=1;
        while iter*(iter+1) div 2 < buf + 1 do inc(iter);
        ro := r  - (buf - (iter - 1) * iter div 2);
        co := c - (iter - (buf - (iter - 1) * iter div 2)) +1;
      end else
      begin
        buf := (r - 1) * r div 2 +1;
        ro:= (n-buf) mod r +1;
        co:= (n-buf) div r + r - ro +1;
        
      end;
      writeln(ro,' ',co);
    end;
  end;
end.