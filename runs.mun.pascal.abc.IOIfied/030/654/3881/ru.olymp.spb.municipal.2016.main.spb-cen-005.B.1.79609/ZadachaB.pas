Program ZadachaB;
  var n,p,q,zs,zn,i,ii,z,a,aa,tt,k,ttt: integer;
  gn,gv,t,max,o: real;
  s: array of integer;
  ss: array of integer;
  ifs: array of integer;
  Delter1: array[0..100] of integer;
  Delter2: array[0..100] of integer;
begin
  readln(n,p,q);
  gn := 1/p;
  gv := 1/q;
  zn := 2;
  zs := 1;
  z := 0;
  repeat
    zs := 1;
    repeat
      aa := 0;
      k := 0;
      o := zs/zn;
      if (o < gv) then begin
        k := 0;
        tt := 0;
        for i := 2 to zs do begin
          if (zs mod i) = 0 then begin
            Delter1[tt] := i;
            tt := tt+1;
          end;
        end;
        ttt := 0;
        for i := 2 to zs do begin
          if (zs mod i) = 0 then begin
            Delter2[ttt] := i;
            ttt := ttt+1;
          end;
        end;
        for i := 0 to (tt-1) do begin
          for ii := 0 to (ttt-1) do begin
            if Delter1[tt] = Delter2[ttt] then k := 1;
          end;
        end;
        
        if k = 0 then begin
          if not (zs/zn <= gn) then begin
            z := z + 1;
            SetLength(s, z);
            SetLength(ss,z);
            s[z-1] := zs;
            ss[z-1] := zn;
          end;
        end;
        
      end else aa := 1;
      zs := zs + 1;
    until aa = 1;
    zn := zn + 1;
    if zn > n then a := 1;
  until a = 1;
  max := 100500;
  for i := 0 to (z-1) do begin
    for ii := 0 to (z-1) do begin
      if ifs[ii] = 0 then begin
        if s[ii]/ss[ii] < max then begin
          max := s[ii]/s[ii];
        end;
      end;
    end;
    writeln(s[ii] + '/' + ss[ii]);
    ifs[ii] := 1;
  end;
end.