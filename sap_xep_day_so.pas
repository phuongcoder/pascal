(*Sap xep day so*)
{Copy right Phuong}
program sapxep;
uses crt;
const Nmax = 250;
type ArrInt = array [1..Nmax] of integer;
var N,i,j,t:integer;
    A:ArrInt;
begin
    clrscr;
    write('Nhap so luong phan tu cua day so, N = ');
    readln(N);
    for i:= 1 to N do
        begin
            write('Nhap so thu ',i,' = ');
            readln(A[i]);
        end;
    for j:= N downto 2 do
        for i:= 1 to j-1 do
            if A[i] > A[i+1] then
                begin
                    t:= A[i+1];
                    A[i]:= A[i+1];
                    A[i+1]:= t;
                end;
    write('Day so duoc sap xep la:');
    for i:=1 to N do write(A[i]:4);
    readln
end.
