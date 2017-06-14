var k,i,n:longint;
s:string;
c:char;
begin
  n:=0;
  read(k);
  str(k,s);
  repeat
    i:=pos('0',s);
    if (i=1) then delete(s,i,1);
  until (i>1) or (i=0);
  for i:= 1 to (length(s) div 2) do begin
    c:=s[i];
    s[i]:=s[length(s)-i+1];
    s[length(s)-i+1]:=c;
  end;
  repeat
    i:=pos('0',s);
    if (i=1) then delete(s,i,1);
  until (i>1) or (i=0);
  repeat
    i:=pos('0',s);
    if i<>0 then n:=n+1;
    delete(s,i,1)
  until i=0;
  writeln(n);
end.
