var n,p,q,m,i,u,j,o,konez,umin,yu: byte; a: array [1..100,1..2] of byte; l: boolean; min: real;
begin
  read (n,p,q);
  if ((n mod q)=0) then m:=(n div q) 
  else m:=((n div q)+1);
  u:=1;
  for i:=1 to m do
    for j:=1 to n do
      begin
        if i<=n then 
          begin 
            if ((1/p)<(i/j)) and ((i/j)<(1/q)) then
            begin
             l:=true;
             if i<j then yu:=(i div 2) else yu:=(j div 2);
             for o:=2 to yu do
                  if (i mod o=0) and (j mod o=0) then begin l:=false; break end;
               if (j mod i=0) then l:=false;
               if (l=true) then
               begin a[u,1]:=i; a[u,2]:=j; u+=1; end;
            end; end;
      end;
 konez:=(u-1);
 while konez<>0 do 
  begin 
  min:=5; umin:=0;
    for i:=1 to (u-1) do
      begin
        if (a[i,1]/a[i,2])< min then begin umin:=i; min:=(a[i,1]/a[i,2]); end; 
      end;
    writeln (a[umin,1],'/',a[umin,2]);
    a[umin,1]:=100; a[umin,2]:=50; konez-=1;
  end;
 end.