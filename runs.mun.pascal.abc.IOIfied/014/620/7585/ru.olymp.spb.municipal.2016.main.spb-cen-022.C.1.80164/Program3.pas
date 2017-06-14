var x,m,i,n:integer;s:string;
begin
readln(n);
s:='';
for i:=1 to n do
  s:=s+'a';
for i:=2 to n div 2 + 1 do
  begin
    s[i]:=chr(ord(s[i-1])+1);
    s[n-i+1]:=s[i];
  end;
writeln(s);
x:=-1;
for i:=1 to n div 2 do
  begin  
      s[1]:=chr(ord(s[1])+1);
      s[5]:=chr(ord(s[5])+1);
      for m:=2 to n div 2 do
        begin
          s[m]:=chr(ord(s[m])+x);
          s[n-m+1]:=chr(ord(s[n-m+1])+x);
          x:=-x;
        end;
    s[n div 2 + 1]:=chr(ord(s[n div 2 + 1])-1);
    writeln(s)
 end;   
for i:=1 to n div 2 do
  begin  
      s[1]:=chr(ord(s[1])-1);
      s[5]:=chr(ord(s[5])-1);
      for m:=2 to n div 2 do
        begin
          s[m]:=chr(ord(s[m])+x);
          s[n-m+1]:=chr(ord(s[n-m+1])+x);
          x:=-x;
        end;
    s[n div 2 + 1]:=chr(ord(s[n div 2 + 1])+1);
    writeln(s)
 end;    
end.    