program B2;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes ,math
  { you can add units after this };


 var
     x:array[1..10000] of array[1..2] of integer;
     y:array[1..10000] of extended;

     rr:extended;
     n,p,q,num,r,k,i1,i2,a,c,m,w,i:integer ;

     function kek(var m,w:integer):integer;
       begin
          while (m mod w<>0) and (w mod m<>0) do
begin
  if w>m  then w:=w-m
  else
  m:=m-w;
end;
 if (m=1) or (w=1) then kek:=1
 else kek:=0;

end;

 procedure swapi(var a,b:integer);
 var q:integer;
 begin
    q:=a;
    a:=b;
    b:=q;
 end;

procedure swape(var a,b:extended);
 var q:extended;
 begin
    q:=a;
    a:=b;
    b:=q;
 end;

begin
i:=1;
num:=0;
read(n,p,q);
for c:=1 to n do
begin
  for a:=((c+p) div p ) to ((c-q+1) div q)  do
  begin
    m:=a;
    w:=c;
  if( kek(m,w)=1) then
 begin
   x[i][1]:=a;
   x[i][2]:=c;
   y[i]:=a/c;
   inc(i);

  end;
end;
  end;
   i:=i-1;
  for i1:=1 to i do
     for i2:=1 to i1-1 do
     begin
     if y[i1]<y[i2] then
     begin
      swapi(x[i1][1],x[i2][1]);
      swapi(x[i1][2],x[i2][2]);
      swape(y[i1],y[i2]);

     end;
       end;
  for i1:=1 to i do
 writeln(x[i1][1],'/',x[i1][2]);


readln();
readln();


end.

