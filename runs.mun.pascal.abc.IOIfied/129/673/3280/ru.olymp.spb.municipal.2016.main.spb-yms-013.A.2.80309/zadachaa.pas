program first;
 
 
var i,B,N :longint;
k:string;
BEGIN
    read(k);
    B:=0;
    N:=0;
        for i:=length(k) downto 1 do
         begin
              if N=1 then begin
                 if k[i]= '0' then
                  B:=B+1;
                    end
             else
             if k[i]<> '0' then
               N:=1;
        end;
   writeln(B);
       end.
