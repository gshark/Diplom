Var n,i: integer;
    s,rab,st: string;
Begin
  s:='abcdefghijklmnopqrstuvwxyz';
  read(n);
  if n mod 2 = 0 then begin
    for i:=0 to n div 2 - 1 do begin
      st:=copy(s,2,i);
      rab:=copy(s,1,n div 2-i);
      writeln(reversestring(st),rab,reversestring(rab),st);
    end;
    for i:=n div 2 - 1 downto 0 do begin
      st:=copy(s,2,i);
      rab:=copy(s,1,n div 2-i);
      writeln(reversestring(st),rab,reversestring(rab),st);
    end;
  end
   Else begin
    for i:=0 to n div 2 do begin
      st:=copy(s,2,i);
      rab:=copy(s,1,n div 2-i);
      write(reversestring(st),rab,copy(s,length(rab)+1,1));
      writeln(reversestring(rab),st);
    end;
    for i:=n div 2 - 1 downto 0 do begin
      st:=copy(s,2,i);
      rab:=copy(s,1,n div 2-i);
      write(reversestring(st),rab,copy(s,length(rab)+1,1));
      writeln(reversestring(rab),st);
    end;
    
  end;
end.