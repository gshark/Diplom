Program dds;
Begin
var a,b,c,i,sum,y,f,d :integer;
var g,h :real;
readln(a,b,c);
sum:=b*c;
      For i:=b to a-1 do begin
              //if(b-c>=1) then begin
                d:=i div b;
                f:=(i div c);
                if(i mod c<>0) then f:=(i div c)+1;
                
                g:=f-d;
                    if(g<>1) then begin 
                         //for y:=d to f do begin
                          h:=d+1;
                          writeln(h, i);

//end;
                  //  end;
                end;
                    end;

End.