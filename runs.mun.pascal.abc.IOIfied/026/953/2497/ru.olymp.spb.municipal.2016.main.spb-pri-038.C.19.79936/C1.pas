program CCa;
var
 a:array [,] of char;
 n,i,j,i1:integer;
 
//----------------------------------------------------------------
procedure a1(i,j,k,n,p:integer);
begin
 k:=k+1;
 for i:=0 to n-1 do begin
                     for j:=0 to n-1 do begin
                                         if a[i,j]=chr(k-1) then begin
                                                                  if i-1>=0 then begin
                                                                                  if ord(a[i-1,j])<97 then a[i-1,j]:=chr(k);
                                                                                 end;
                                                                  if i+1<=n-1 then begin
                                                                                  if ord(a[i+1,j])<97 then a[i+1,j]:=chr(k);
                                                                                 end;
                                                                  if j-1>=0 then begin
                                                                                  if ord(a[i,j-1])<97 then a[i,j-1]:=chr(k);
                                                                                 end;
                                                                  if j+1<=n-1 then begin
                                                                                  if ord(a[i,j+1])<97 then a[i,j+1]:=chr(k);
                                                                                 end;
                                                                 end;
                                        end;
                    end;
  for i:=0 to n-1 do begin
                     for j:=0 to n-1 do begin
                                         if ord(a[i,j])>=97 then p:=p+1;
                                        end;
                    end;
  if p=(n-1)*(n-1) then exit;
  if k=200 then exit;
 a1(0,0,k,n,0);
end;
//----------------------------------------------------------------


begin
 readln(n);
 setlength(a,n,n);
  for i:=0 to n-1 do begin
                   for j:=0 to n-1 do begin
                                       if i=j then a[i,j]:='a';
                                       if i+j=n-1 then a[i,j]:='a';
                                      end;
                                       
                  end;
 a1(0,0,97,n,0);
 for i:=0 to n-1 do begin
                     for j:=0 to n-1 do begin
                                         write(a[i,j]);
                                        end;
                     writeln();
                    end;
end.