var
  k,i,t:longint;

function Power(x,t:integer):longint;
var
  i,p:integer;
begin
  if t=0 then power:=1
  else begin
    p:=x;
    for i:=1 to t-1 do
      p:=x*p;
      power:=p;
  end;
end;{power} 

begin
  readln(k);
  for i:=1 to 9 do
    begin
      t:=k div power(10,i);
        if t=0 then 
          begin
            writeln();
            break
          end
        else begin
          if t<10 then break;
        end;
      
    end;
end.    