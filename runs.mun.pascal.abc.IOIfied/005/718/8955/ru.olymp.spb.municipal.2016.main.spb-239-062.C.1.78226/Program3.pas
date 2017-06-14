const Debug = 0;
var NullStartCount,NullEndCount,Count,Num1,Num2,Num3,Num4,Num,i,a,b:longint;
    start,c:char;
    s: string;
    M:array of array of char;
begin
read(Num);

Setlength(M,Num+1);
for i:=1 to Num do begin
  Setlength(M[i],Num+1);
  end;
for i:=1 to Num do
  begin
    for a:=1 to Num do
      begin
        m[i][a]:=chr(ord('z')+20);;
      end;
  end;
Num1:=Num;
Num2:=Num;
Num3:=Num;
Num4:=Num;
if Num> 26 then 
  begin
  Num1:=Num-26;
  end;
if Num1> 26 then 
  begin
  Num2:=Num1-26;
  Num1:=Num1-26;
  end;
if Num2> 26 then 
  begin
  Num3:=Num2-26;
  Num2:=Num2-26;
  Num1:=Num1-26;
  
  end;
if Num3> 26 then 
  begin
  Num4:=Num3-26;
  Num3:=Num3-26;
  Num2:=Num2-26;
  Num1:=Num1-26;
  end;
if Num mod 2 = 1 then
for c:=chr(ord('a')+trunc(Num1/2)) downto 'a' do begin
  a:=trunc((Num1+1)/2)+ord(c)-ord('a');
  b:=trunc((Num+1)/2);
  while (a<>0) and (b<>0) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a-1;
      b:=b-1;
        
    end;
  a:=trunc((Num+1)/2)-ord(c)+ord('a');
  b:=trunc((Num+1)/2);
  
  while (a<>0) and (b<>0) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a-1;
      b:=b-1;
        
    end;
  a:=trunc((Num+1)/2)+ord(c)-ord('a');
  b:=trunc((Num+1)/2);
  
  while (a<>Num+1) and (b<>Num+1) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a+1;
      b:=b+1;
    end;
  a:=trunc((Num+1)/2)-ord(c)+ord('a');
  b:=trunc((Num+1)/2);
  
  while (a<>Num+1) and (b<>Num+1) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a+1;
      b:=b+1;
    end;
  a:=trunc((Num+1)/2)+ord(c)-ord('a');
  b:=trunc((Num+1)/2);
  while (a<>Num+1) and (b<>0) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
  
      a:=a+1;
      b:=b-1;
        
    end;
  a:=trunc((Num+1)/2)-ord(c)+ord('a');
  b:=trunc((Num+1)/2);
  while (a<>Num+1) and (b<>0) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
  
      a:=a+1;
      b:=b-1;
        
    end;
  a:=trunc((Num+1)/2)+ord(c)-ord('a');
  b:=trunc((Num+1)/2);
  
  while (a<>0) and (b<>Num+1) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a-1;
      b:=b+1;
   end;
  a:=trunc((Num+1)/2)-ord(c)+ord('a');
  b:=trunc((Num+1)/2);
  
  while (a<>0) and (b<>Num+1) do
    begin
     if M[a][b]>c then 
      M[a][b]:=c;
      a:=a-1;
      b:=b+1;
   end;
  end;

  for i:=1 to Num do
  begin
    for a:=1 to Num do
      begin
        write(M[i][a]);
      end;
    writeln();
  end;

end.