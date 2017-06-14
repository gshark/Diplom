Const s='abcdefghijklmnoprstuvxyz';
var a: array [1..100,1..100] of char; n,cur,i,k,j: byte;
begin
  n:=5;
  cur:=1;
  for j:=1 to n do begin
      if j=1 then
           for i:=1 to n do begin
           for k:=1 to n do a[i,k]:='0';
              a[i,i]:=s[cur]; a[i,n-i+1]:=s[cur]; end
       else begin
     
       if cur=26 then cur:=1 else cur+=1;
     
       for i:=j to n do begin
          if (a[i,i-j+1]='0') then a[i,i-j+1]:=s[cur];
          if (a[i,n-i+j]='0') then a[i,n-i+j]:=s[cur];
          if (a[n-i+1,i-j+1]='0') then a[n-i+1,i-j+1]:=s[cur]; 
          if (a[n-i+1,n-i+j]='0') then a[n-i+1,n-i+j]:=s[cur];
       end; end;end;
       for i:=1 to n do begin
         for j:=1 to n do
            write (a[i,j]); writeln; end;
end.            