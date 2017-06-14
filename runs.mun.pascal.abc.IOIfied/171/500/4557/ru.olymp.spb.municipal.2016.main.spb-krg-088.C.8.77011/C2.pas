program OlimpC; 

var
  a: array [0..1000, 0..1000] of char; 
  i, j, n, p, po, ii, jj: integer; 
  k, ko: char; 

procedure Proverka(x: char);
begin
  if x = 'z' then 
  begin
    x := 'a';
    //k := 'a'; 
  end;
end;

begin
  //succ(k) -для алфавита 
  { потом введи с клавы}
  read(n);
  p := 0; 
  k := 'a'; 
  
  for i := 1 to n do
    for j := 1 to n do  
      a[i, j] := 'z'; 
  
  for i := 1 to n do
  begin
    j := i;
    a[i, j] := 'a'; 
  end;
  
  for i := 1 to n do 
  begin
    j := n - i + 1;
    a[i, j] := 'a'; 
  end;
  
  
  while p <= n - 1 do 
  begin
    
    for i := 1 to n do
    begin
      j := i + p;
      if a[i, j] > k  then  
        a[i, j] := k; 
    end;
    
    p := p + 1;
    k := succ(k);
    Proverka(k);
  end;
  
  p := 0;
  k := 'a';
  
  
  while p <= n - 1 do
  begin
    
    for jj := 1 to n do 
    begin
      ii := (n - jj) + p + 1;
      
      if   a[ii, jj] > k then  
        a[ii, jj] := k; 
    end;
    
    p := p + 1;
    k := succ(k);
    Proverka(k);
  end;
  
  
  p := 0;
  k := 'a'; 
  
  while p <= n - 1 do 
  begin
    for j := 1 to n do
    begin
      i := j + p;
      if  a[i, j] > k then  
        a[i, j] := k; 
    end;
    
    p := p + 1;
    k := succ(k); 
    Proverka(k);
  end;
  
  
  
  
  p := 0;
  k := 'a'; 
  
  while p <= n - 1 do
  begin
    
    for jj := 1 to n do 
    begin
      ii := (n - jj) + p + 1;
      
      if  a[ii, jj] > k   then  
        a[i, j] := k; 
    end;
    
    p := p + 1;
    k := succ(k); 
    Proverka(k);
  end;
  
  k := 'a'; 
  
  while k <> 'z' do 
  begin
    
    for i := 1 to n do
      for j := 1 to n do
        if ((a[i - 1, j] = k) or (a[i, j - 1] = k) or (a[i + 1, j] = k) or (a[i, j + 1] = k)) and (a[i, j] > k)  then 
        begin
          a[i, j] := succ(k);
        end;
    k := succ(k); 
  end;
  
  for i := 1 to n do
  begin
    for j := 1 to n do
      write(a[i, j]); 
    writeln;
  end;
  
end.