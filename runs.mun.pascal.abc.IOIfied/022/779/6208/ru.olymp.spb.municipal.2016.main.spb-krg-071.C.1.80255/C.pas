var a: array[0..101,0..101] of integer;
var n,i,d,l: integer;
begin
  readln(n);
  for i:=1 to n do
  begin
    a[i,i]:=1;
    a[i,n-i+1]:=1;
  end;
  for i:=2 to n do
  begin
    for l:= 1 to n do
    begin
      for d:=1 to n do
      begin
        if (a[d,l]=0) then
        begin
          if ((a[d,l-1]=i-1) or (a[d+1,l]=i-1) or (a[d-1,l]=i-1) or (a[d,l+1]=i-1)) then
          begin
            a[d,l]:=i;
          end;
        end;
      end;
    end;
  end;
  for l:=1 to n do
  begin
    for d:=1 to n do
    begin
     if (a[l,d] + 25) mod 26 = 0 then
      write('a');
     if (a[l,d] + 24) mod 26 = 0  then
      write('b');
     if (a[l,d]+ 23 )mod 26 = 0  then
      write('c');
     if (a[l,d] + 22) mod 26 = 0  then
      write('d');
     if (a[l,d] + 21) mod 26 = 0  then
      write('e');
     if (a[l,d] + 20) mod 26 = 0  then
      write('f');
     if (a[l,d] + 19) mod 26 = 0  then
      write('g');
     if (a[l,d] + 18) mod 26 = 0  then
      write('h');
     if (a[l,d] + 17) mod 26 = 0  then
      write('i');
     if (a[l,d] + 16) mod 26 = 0  then
      write('j');
     if (a[l,d] + 15) mod 26 = 0  then
      write('k');
     if (a[l,d] + 14) mod 26 = 0  then
      write('l');
     if (a[l,d] + 13) mod 26 = 0  then
      write('m');
     if (a[l,d] + 12) mod 26 = 0  then
      write('n');
     if (a[l,d] + 11) mod 26 = 0  then
      write('o');
     if (a[l,d] + 10) mod 26 = 0  then
      write('p');
     if (a[l,d] + 9 )mod 26 = 0  then
      write('q');
     if (a[l,d] + 8 )mod 26 = 0  then
      write('r');
     if (a[l,d] + 7 )mod 26 = 0  then
      write('s');
     if (a[l,d] + 6 )mod 26 = 0  then
      write('t');
     if (a[l,d] + 5 )mod 26 = 0  then
      write('u');
     if (a[l,d]+ 4  )mod 26 = 0  then
      write('v');
     if (a[l,d] + 3) mod 26 = 0  then
      write('w');
     if (a[l,d] + 2) mod 26 = 0  then
      write('x');
     if (a[l,d] + 1) mod 26 = 0  then
      write('y');
     if a[l,d] mod 26 = 0  then
      write('z');    
    end;
  writeln('');
  end;
end.