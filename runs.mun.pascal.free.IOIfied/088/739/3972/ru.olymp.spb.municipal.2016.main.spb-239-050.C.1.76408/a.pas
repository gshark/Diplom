program a;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes
  { you can add units after this };

var
  n,x,y,i,fl:integer;
  k:array [1..100,1..100] of integer;

begin
  readln(n);

   for x:=1 to n do begin
   for y:=1 to n do k[x,y]:=0;
   end;

  for i:=1 to n do begin
    k[i,i]:=1;
    k[n-i+1,i]:=1;
  end;

  for i:=2 to n+1 do begin
    for x:=1 to n do
        for y:=1 to n do begin
          if k[x,y]=i-1 then begin
             if(x<n) then if k[x+1,y] = 0 then k[x+1,y]:=i;
             if(y<n) then if k[x,y+1] = 0 then k[x,y+1]:=i;
             if(y>1) then if k[x,y-1] = 0 then k[x,y-1]:=i;
             if(x>1) then if k[x-1,y] = 0 then k[x-1,y]:=i;
             end;
        end;
  end;

 for x:=1 to n do begin
   for y:=1 to n do begin
     k[x,y]:=k[x,y] mod 26;
     if k[x,y]=1 then write('a',' ');
     if k[x,y]=2 then write('b',' ');
     if k[x,y]=3 then write('c',' ');
     if k[x,y]=4 then write('d',' ');
     if k[x,y]=5 then write('e',' ');
     if k[x,y]=6 then write('f',' ');
     if k[x,y]=7 then write('g',' ');
     if k[x,y]=8 then write('h',' ');
     if k[x,y]=9 then write('i',' ');
     if k[x,y]=10 then write('j',' ');
     if k[x,y]=11 then write('k',' ');
     if k[x,y]=12 then write('l',' ');
     if k[x,y]=13 then write('m',' ');
     if k[x,y]=14 then write('n',' ');
     if k[x,y]=15 then write('o',' ');
     if k[x,y]=16 then write('p',' ');
     if k[x,y]=17 then write('q',' ');
     if k[x,y]=18 then write('r',' ');
     if k[x,y]=19 then write('s',' ');
     if k[x,y]=20 then write('t',' ');
     if k[x,y]=21 then write('u',' ');
     if k[x,y]=22 then write('v',' ');
     if k[x,y]=23 then write('w',' ');
     if k[x,y]=24 then write('x',' ');
     if k[x,y]=25 then write('y',' ');
     if k[x,y]=26 then write('z',' ');
   end;
   writeln;
 end;



end.

