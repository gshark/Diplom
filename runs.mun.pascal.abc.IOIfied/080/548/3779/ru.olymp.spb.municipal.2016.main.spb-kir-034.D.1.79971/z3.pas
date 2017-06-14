var
a,b:array[1..10] of integer;
n, i, k, o, i1, o1, j, res, v, g, m, l:integer;
s:array[1..10,1..10] of string;
begin
   l:=0; res:=0;
   read(n,k);
   for i:=1 to n do
    begin
      l:=l+1;
      a[i]:=l;
      b[i]:=l;
    end;
   
   for i:=1 to n do
    begin
       for o:=1 to n do
        begin
          m:=a[o];
          a[o]:=a[i];
          a[i]:=m;
          l:=0;
          v:=a[1]*a[2]+a[2]*a[3]+a[3]*a[4]+a[4]*a[5]+a[5]*a[6]+a[6]*a[7]+a[7]*a[8]+a[8]*a[9]+a[9]*a[10];
          s[i,o]:='0'+a[1]+a[2]+a[3]+a[4]+a[5]+a[6]+a[7]+a[8]+a[9]+a[10];
          delete(s[i,o],1,1);
          j:=0;
            for i1:=1 to i-1 do
              for o1:=1 to o-1 do
                if s[i,o]=s[i1,o1] then
                  j:=1;
           if (j=0)and(v mod k=0) then
            begin
            res:=res+1;
            {write(s);
          for g:=1 to n do
            write(a[g]);
          writeln;}
          end;
          
          for g:=1 to n do
             begin
               l:=l+1;
               a[g]:=l;
             end;
        end;
    end;
   writeln(res);
end.