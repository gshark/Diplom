program YaNeIgor;
var
        n,p,q,i,k,j,l:integer;
        g:real;
        stri:string;
        arr:array[1..10000] of real;
        arr1:array[1..10000] of string[3];

begin
readln(n,p,q);

k:=1;
for i:=1 to 2000 do
        for j:=1 to n-1 do
        if (i/j>1/p) and (i/j<1/q) and (i mod j >0) then begin
                arr[k]:=i/j;
                str(i,stri);
                arr1[k]:=stri+'/';
                str(j,stri);
                arr1[k]:=arr1[k]+stri;
                k:=k+1;

                end;

for l:=1 to 2000 do begin
        k:=0; g:=200;
        for i:=1 to 2000 do
        if (arr[i]<g) and (frac(arr[i])>0) then begin
                g:=arr[i]; k:=i; end;
                if k>0 then begin writeln(arr1[k]); arr[k]:=0; end;
                end;

end.
