program nomer1;
 var a, c, i: byte;
     k, d: string;


 begin
  readln(k);
  c:= length(k);
  a:=0;
  for i:=1 to c do
  begin;
   d:= copy(k,i,1);
   if d='0'then a:=a+1;
  end;
     d:=copy(k,c, 1);
     c:=c-1;
    if d='0' then;
    begin
     while d= '0' do begin
         d:=copy(k,c, 1);
         c:=c-1;
         a:=a-1;
      end;
     end;
  writeln(a);
  //readln();
 end.
