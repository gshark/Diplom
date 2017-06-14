var
p,n,q,i,l,z,k: integer;
test,test_one, curr:real;
items:array[1..5] of string;
curr_str, test_str, test_one_str: string;
begin

read(n,p,q);

k:=0;
z:=0;
for i:=1 to n do begin
  for l:=1 to n do begin
   curr:= l/i;  
   curr_str:= IntToStr(l)+'/'+IntToStr(i);  
 
     if ((l mod 2= 0) and (i mod 2 = 0)) or ((l mod 3 = 0) and (i mod 3 = 0)) then else 
     if (curr >1/p) and (curr < 1/q) then begin
        z:=z+1;
        k:= k+1;
        if z = 1  then begin test:=curr;test_str:=curr_str; end;
        if z = 2 then begin  test_one:=curr;test_one_str:=curr_str; end;
        if z >= 3 then begin 
         
           if (curr > test) and (curr < test_one) and (test < test_one) then begin items[k] := test_one_str; items[k-2]:= test_str; items[k-1]:= curr_str;  end; 
           if (curr > test) and (curr < test_one) and (test > test_one) then begin items[k] := test_str; items[k-2]:= test_one_str; items[k-1]:= curr_str;  end;
           
           if (curr > test) and (curr > test_one) and (test < test_one) then begin items[k] := curr_str; items[k-1]:= test_one_str; items[k-2]:= test_str;  end; 
           if (curr > test) and (curr > test_one) and (test > test_one) then begin items[k] := curr_str; items[k-1]:= test_str; items[k-2]:= test_one_str;    end;

           if (curr < test) and (curr < test_one) and (test < test_one) then begin items[k] := test_one_str; items[k-1]:= test_str; items[k-2]:= curr_str;  end;
           if (curr < test) and (curr < test_one) and (test > test_one) then begin items[k] := test_str; items[k-1]:= test_one_str; items[k-2]:= curr_str; end;
        end;
        
 
     end;
  
  end;
end;

for i:= 1 to k+1 do begin
  
  writeln(items[i]);

end;

end.