Program PR_A;
  var k, n:integer;
Begin
  n:=0;
  writeln ('¬ведите число');
  readln (k);
  while k<>0 do
    if k mod 10 <> 0 then begin 
                          while k<>0 do
                            if k mod 10 = 0 then begin n:=n+1;
                                                       k:=k div 10;
                                                       end
                                            else k:=k div 10;
                          end
                     else k:=k div 10;
  writeln (n);
End.