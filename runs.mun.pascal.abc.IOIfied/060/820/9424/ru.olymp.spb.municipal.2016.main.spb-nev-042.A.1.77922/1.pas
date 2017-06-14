var
  k:string;
  z,i:integer;
  b:boolean;

begin
  readln(k);

  for i:=length(k) downto 1 do begin
    if(k[i] = '0')then begin
  
    if(b=true)then z:=z+1;
    end 
      else b:=true;


end;
writeln(z);
end.