program taskC;

var
  n, i, j: longint;
  a: array[1..100,1..100] of integer;
  b: array[1..51] of char;

begin
  {alph setup}b[1]:='a';b[2]:='b';b[3]:='c';b[4]:='d';b[5]:='e';b[6]:='f';b[7]:='g';b[8]:='h';b[9]:='i';b[10]:='j';b[11]:='k';b[12]:='l';b[13]:='m';b[14]:='n';b[15]:='o';b[16]:='p';b[17]:='q';b[18]:='r';b[19]:='s';b[20]:='t';b[21]:='u';b[22]:='v';b[23]:='w';b[24]:='x';b[25]:='y';b[26]:='z';for i := 27 to 51 do b[i] := b[i-26];
  readln(n);
  for i := 1 to n do begin
    for j := 1 to n do begin
      if (i <= ((n+1) / 2)) and (j <= ((n+1) / 2)) then begin
        a[i,j] := abs(i - j) + 1;
      end
      else begin
        if (i > ((n+1) / 2)) and (j <= ((n+1) / 2)) then begin
         a[i,j] := a[n - i + 1,j];
        end
        else begin
          if (i > ((n+1) / 2)) and (j > ((n+1) / 2)) then begin
            a[i,j] := a[n - i + 1,n - j + 1];
          end
          else begin
            a[i,j] := a[i,n - j + 1];
          end;
        end;
      end;
    end;
  end;
  for i := 1 to n do begin
    for j := 1 to n - 1 do begin
      write(b[a[i,j]]);
    end;
    writeln(b[a[i,j+1]]);
  end;
end.