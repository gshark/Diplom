program q;
var
 k,i,a,o,f:integer;
 k1:string[10];
begin;
 readln(k);
 k1:=inttostr(k);
 a:=length(k1);
 for i:=a downto 1 do begin
                       if (k1[i]='0') and (i=a) then begin
                                                    o:=1;
                                                   end;
                       if o=1 then begin
                                     if k1[i]<>'0' then begin
                                                         o:=0;
                                                        end;
                                    end;
                      if (k1[i]='0') and (o=0) then f:=f+1;
                     end;
 writeln(f);
end.