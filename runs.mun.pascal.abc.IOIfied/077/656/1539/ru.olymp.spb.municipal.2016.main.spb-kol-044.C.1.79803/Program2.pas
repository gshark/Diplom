program pp;
const 
n=5;
var i,j,k,z,c,o: integer;
colour: array [1..26] of string;
f: array [1..n, 1..n] of string;
 begin
  k:= n div 2 + 1;
  colour[1]:='a';
  colour[2]:='b';
  colour[3]:='c';
  colour[4]:='d';
  colour[5]:='e';
  colour[6]:='f';
  colour[7]:='g';
  colour[8]:='h';
  colour[9]:='i';
  colour[10]:='g';
  colour[11]:='k';
  colour[12]:='l';
  colour[13]:='m';
  colour[14]:='n';
  colour[15]:='o';
  colour[16]:='p';
  colour[17]:='q';
  colour[18]:='r';
  colour[19]:='s';
  colour[20]:='t';
  colour[21]:='u';
  colour[22]:='v';
  colour[23]:='w';
  colour[24]:='x';
  colour[25]:='y';
  colour[26]:='z';
  
  z:=k;

   for i:=1 to n do
   begin
    for j:=k to n do begin
    if z>=2 then begin
       f[i,j]:= colour[z];
       z:=z-1;
       write (f[i,j]);
       end;
       f[i,j]:= colour[z];
       z:=z+1;
       write (f[i,j]);
       end; 
       writeln();
  end;  
  end.