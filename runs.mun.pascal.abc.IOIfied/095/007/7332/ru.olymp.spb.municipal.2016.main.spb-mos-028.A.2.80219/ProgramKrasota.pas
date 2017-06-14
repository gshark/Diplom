   Program S1;
    var m:integer;
        k: longint;
   Begin
   m:=0;
 randomize;
 k:=random(1000000001);
 writeln(k);
  while k mod 10 =0 do k:=k div 10;
 while k<>0 do begin
 if k mod 10 =0 then m:=m+1;
 k:=k div 10;
 end;
 writeln('Красота равна ',m);
 end.
 