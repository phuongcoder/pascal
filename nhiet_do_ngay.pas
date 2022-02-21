(*Tinh nhiet do*)
program Nhiet_do_ngay;
const Max = 30;
type Kmang1 = array[1..Max] of real;
var Nhietdo:Kmang1;
    dem,i, N:integer;
    Tong, Trung_binh:real;
begin
    write('Nhap so ngay: '); readln(N);
    Tong:=0;
    for i:= 1 to N do
        begin
            write('Nhap nhiet do ngay: ', i ,': ');
            readln(Nhietdo[i]);
            Tong:= Tong + Nhietdo[i];
        end;
    dem:=0;
    Trung_binh:= Tong/N;
    for i:= 1 to N do
        if Nhietdo[i] > Trung_binh then dem:= dem + 1;
    writeln('Nhiet do trung binh ', N , ' ngay: ', Trung_binh:8:3);
    writeln('So ngay nhiet do cao hon trung binh: ',dem);
    readln
end.
