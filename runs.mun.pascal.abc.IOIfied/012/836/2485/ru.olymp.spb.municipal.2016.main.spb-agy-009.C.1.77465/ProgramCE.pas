var n,i,j,x,nn:integer;
begin
read(n);
 if n mod 2=0 then nn:=n else nn:=n+1;
for i:=1 to n do begin
 for j:=1 to n do begin
 x:=(round(abs(abs(nn/2-j)-abs(nn/2-i)))mod 26)+1;
 if(x=1)then write('a');
 if(x=2)then write('b');
 if(x=3)then write('c');
 if(x=4)then write('d');
 if(x=5)then write('e');
 if(x=6)then write('f');
 if(x=7)then write('g');
 if(x=8)then write('h');
 if(x=9)then write('i');
 if(x=10)then write('j');
 if(x=11)then write('k');
 if(x=12)then write('l');
 if(x=13)then write('m');
 if(x=14)then write('n');
 if(x=15)then write('o');
 if(x=16)then write('p');
 if(x=17)then write('q');
 if(x=18)then write('r');
 if(x=19)then write('s');
 if(x=20)then write('t');
 if(x=21)then write('u');
 if(x=22)then write('v');
 if(x=23)then write('w');
 if(x=24)then write('x');
 if(x=25)then write('y');
 if(x=26)then write('z');
 end;
 writeln('');
end;
end. 
    