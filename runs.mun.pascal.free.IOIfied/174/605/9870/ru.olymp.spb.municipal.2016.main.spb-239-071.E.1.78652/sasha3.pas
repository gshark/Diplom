program sasha3;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Classes, SysUtils, CustApp,math
  { you can add units after this };
    var a,b,c,i,res,n,m,t,q,r,k,j,a1:integer;
      ass:array[1..10] of integer;
       kek:boolean;

  begin

    read(r,q,c);
    if r>q then begin res:=r; r:=q; q:=res; kek:=false; end else kek:=true;
   for i:=1 to c do
    begin
        read(a);
        a1:=a;



        if a<=((r-1)*r div 2)  then
               begin                                                        //1 triangle

                for t:=1 to r do begin a:=a-t; if a<=t+1 then break; end;
                      b:=t+1;
                      c:=1;
                 for j:=1 to a-1 do

                              begin
                                b:=b-1;
                                c:=c+1;
                              end;
                 if a1<>1 then  writeln(c,' ',b) else writeln(1,' ',1);
               end
         else
         if a>r*q-(r-1)*r div 2 then
                begin                                                            //2 triangle
                   res:=r*q-a+1;
                     for t:=1 to r do begin res:=res-t; if res<=t+1 then break; end;
                          if kek then
                                 begin
                      b:=q-t;
                      c:=r;

                                 end
                          else
                          begin
                            b:=r-t;
                            c:=q;
                          end;
                 for j:=1 to res-1 do

                              begin
                                b:=b+1;
                                c:=c-1;
                              end;
                 if a1=r*q then if kek then writeln(r,' ',q) else writeln(q,' ',r);
                  if a1<>r*q then
                         if kek then writeln(c,' ',b) else writeln(c,' ',b);
                end
         else
         begin                                                             //3 part
           res:=a-r*(r-1) div 2;
           if kek then
                  begin
           b:=(res-1) div r +r;
           k:=(res-1) mod r;
           c:=1;
           end
           else
           begin
              c:=1+(res-1) div r;
              b:=r;
              k:=(res-1) mod r;
                  end;
               while k>0 do
                          begin
                            b:=b-1;
                             c:=c+1;
                             k:=k-1;
                             end;

              if kek then writeln(c,' ',b) else writeln(c,' ',b);
         end;
    end;





    readln;
    readln;
    end.
