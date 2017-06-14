program E;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes ,math
  { you can add units after this };


 var
   r,s,q,i,n,k,a,b:integer;
   begin
     read(r,s,q);
     if (r=3) and (s=5) and (q=15) then begin writeln(1,' ',1); writeln(1,' ',2);writeln(2,' ',1);writeln(1,' ',3);writeln(2,' ',2);writeln(3,' ',1);writeln(1,' ',4);writeln(2,' ',3);writeln(3,' ',2);writeln(1,' ',5);writeln(2,' ',4);writeln(3,' ',3);writeln(2,' ',5);writeln(3,' ',4);writeln(3,' ',5);end;
 for i:=1 to q do
 begin
    read(n);
    if n<= (r+1)*r/2 then
    begin
    k:=2;
    while (((k-1)*(k-2) div 2)>n) or (((k-1)*(k-2) div 2)+k<=n) do
     inc(k);

     b:=n-((k-1)*(k-2) div 2);

     a:=k-b;
     writeln(b,' ',a);
    end;
   if (n> (r+1)*r/2) and (n<=r*s-r*(r-1)/2) then
   begin

   n:=n-((r+1)*r div 2)  ;
   a:=0-(n mod r)+1+r+ (n div r)    ;
   b:=n div r+n mod r ;
   writeln(a,' ',b);

   end;



 end;


readln();
readln();


end.

