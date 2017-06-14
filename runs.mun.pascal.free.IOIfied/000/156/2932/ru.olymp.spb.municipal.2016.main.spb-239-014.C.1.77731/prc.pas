program prc;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes  ,Math
  { you can add units after this };

var
  n,i,l,k1,k2,s,x,p,q,b,j,u,v,z,k:integer;
  a:array[0..101,0..101] of integer;
begin
  read(n);
  for i:=0 to n+1 do begin
    for j:=0 to n+1 do begin
      a[i,j]:=100000;
      if (i=j) or (i=n+1-j) and (i<>0) and (j<>0) and (i<>n+1) and (j<>n+1) then a[i,j]:=1;
    end;
  end;
  if n mod 2=1  then begin
  x:=3;
  while x<=n do begin
    k1:=x+(n-x) div 2;
    k2:=(n-x) div 2;
    for i:=k2 to k1 do begin
       if a[k1,i]=100000 then begin a[k1,i]:=min(a[k1-1,i],a[k1+1,i]); a[k1,i]:=min(a[k1,i],a[k1,i-1]); a[k1,i]:=min(a[k1,i],a[k1,i+1]); a[k1,i]:=a[k1,i]+1; end;
       if a[k2,i]=100000 then begin a[k2,i]:=min(a[k2-1,i],a[k2+1,i]); a[k2,i]:=min(a[k2,i],a[k2,i-1]); a[k2,i]:=min(a[k2,i],a[k2,i+1]); a[k2,i]:=a[k2,i]+1; end;
       if a[i,k1]=100000 then begin a[i,k1]:=min(a[i,k1-1],a[i,k1+1]); a[i,k1]:=min(a[i,k1],a[i-1,k1]); a[i,k1]:=min(a[i,k1],a[i+1,k1]); a[i,k1]:=a[i,k1]+1; end;
       if a[i,k2]=100000 then begin a[i,k2]:=min(a[i,k2-1],a[i,k2+1]); a[i,k2]:=min(a[i,k2],a[i-1,k2]); a[i,k2]:=min(a[i,k2],a[i+1,k2]); a[i,k2]:=a[i,k2]+1; end;
    end;
    x:=x+2;
  end;
  a[n div 2+1,n div 2]:=2;
  a[n div 2,n div 2+1]:=2;
  end else begin
   x:=2;
  while x<=n do begin
    k1:=x+(n-x) div 2;
    k2:=(n-x) div 2;
    for i:=k2 to k1 do begin
       if a[k1,i]=100000 then begin a[k1,i]:=min(a[k1-1,i],a[k1+1,i]); a[k1,i]:=min(a[k1,i],a[k1,i-1]); a[k1,i]:=min(a[k1,i],a[k1,i+1]); a[k1,i]:=a[k1,i]+1; end;
       if a[k2,i]=100000 then begin a[k2,i]:=min(a[k2-1,i],a[k2+1,i]); a[k2,i]:=min(a[k2,i],a[k2,i-1]); a[k2,i]:=min(a[k2,i],a[k2,i+1]); a[k2,i]:=a[k2,i]+1; end;
       if a[i,k1]=100000 then begin a[i,k1]:=min(a[i,k1-1],a[i,k1+1]); a[i,k1]:=min(a[i,k1],a[i-1,k1]); a[i,k1]:=min(a[i,k1],a[i+1,k1]); a[i,k1]:=a[i,k1]+1; end;
       if a[i,k2]=100000 then begin a[i,k2]:=min(a[i,k2-1],a[i,k2+1]); a[i,k2]:=min(a[i,k2],a[i-1,k2]); a[i,k2]:=min(a[i,k2],a[i+1,k2]); a[i,k2]:=a[i,k2]+1; end;
    end;
    x:=x+2;
  end;
  end;
  for i:=1 to n do begin
    for j:=1 to n do begin
      a[i,j]:=a[i,j] mod 26;
      if a[i,j]=0 then a[i,j]:=26;
      k:=a[i,j];
      if k=1 then write('a');
      if k=2 then write('b');
      if k=3 then write('c');
      if k=4 then write('d');
      if k=5 then write('e');
      if k=6 then write('f');
      if k=7 then write('g');
      if k=8 then write('h');
      if k=9 then write('i');
      if k=10 then write('j');
      if k=11 then write('k');
      if k=12 then write('l');
      if k=13 then write('m');
      if k=14 then write('n');
      if k=15 then write('o');
      if k=16 then write('p');
      if k=17 then write('q');
      if k=18 then write('r');
      if k=19 then write('s');
      if k=20 then write('t');
      if k=21 then write('u');
      if k=22 then write('v');
      if k=23 then write('w');
      if k=24 then write('x');
      if k=25 then write('y');
      if k=26 then write('z');
    end;
    writeln;
  end;
  //readln;
  //readln;
end.
