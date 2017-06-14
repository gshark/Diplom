var
  timed,t,j,i,n,p,q:integer;
  a:array[1..101,1..101] of integer;
  ans,up,down:array[1..100] of integer;
begin
  t:=1;
  read(n,p,q);
  for i:=1 to n - 1 do begin
    for j:=1 to i - 1 do begin
      if (((j / i) > (1 / p)) and ((j / i) < (1 / q))) then begin
        up[t]:=j;
        down[t]:=i;
        inc(t);
      end;
    end;
  end;
  for i:=1 to t do begin
    ans[i]:=10000*up[i] + 100*down[i];
  end;
  for i:=1 to t - 1 do begin
    if (((ans[i] div 10000) / ((ans[i] div 100) mod 100)) > (((ans[i + 1] div 10000) / ((ans[i + 1] div 100) mod 100)))) then begin
      timed:=ans[i];
      ans[i]:=ans[i + 1];
      ans[i + 1]:=timed;
    end;
  end;
  for i:=1 to t - 1 do begin
    if (((ans[i] div 10000) / ((ans[i] div 100) mod 100)) > (((ans[i + 1] div 10000) / ((ans[i + 1] div 100) mod 100)))) then begin
      timed:=ans[i];
      ans[i]:=ans[i + 1];
      ans[i + 1]:=timed;
    end;
  end;
  for i:=1 to t - 1 do begin
    writeln((ans[i] div 10000), '/' ,((ans[i] div 100) mod 100));
  end;
end.