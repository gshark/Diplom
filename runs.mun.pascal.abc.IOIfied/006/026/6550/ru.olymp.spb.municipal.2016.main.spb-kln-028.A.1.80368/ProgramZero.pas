Program A1;
Var
  w: array[0..10] of integer;
  a,b,i,c,d,r,t : longint;
Begin
  Readln(a);
  c:=0;
  t:=0;
  
  w[0]:=1;
  w[10]:=1;
  w[9]:=1000000000;
  w[8]:=100000000;
  w[7]:=10000000;
  w[6]:=1000000;
  w[5]:=100000;
  w[4]:=10000;
  w[3]:=1000;
  w[2]:=100;
  w[1]:=10;
  
  For i:=1 to 9 do
  begin
    b := a div(w[i]);
    if b=0
    then
    begin
      if t=0
      then
      begin
        c:=i;
        t:=t+1;
      end;
    end;
  end;  
  
  For i:=1 to 9 do
  begin
    d := a mod(w[i]);
    if d=0
    then
    begin
     r:=i;
    end;
  end;
  
  r:=r+1;
  t:=0;
  
  For i:=r to c do
  begin
    b:=a mod(w[i]);
    d:=a mod(w[i+1]);
    if b=d
    then
    begin
      t:=t+1;
    end;
  end;
  
  if c<>9
  then
  begin
    t:=t-1;
  end;
  writeln(t);
  
End.