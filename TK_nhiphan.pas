program TK_nhi_phan;
uses crt;
const Nmax = 250;
type ArrInt = array[1..Nmax] of integer;
var N, i, k, Dau, Cuoi, Giua: integer;
    A:ArrInt;
    Tim_thay: boolean;
begin
    clrscr;
        write('Nhap so luong phan tu cua day so, N = ');
        readln(N);
        writeln('Nhap cac phan tu cua day so tang: ');
        for i:= 1 to N do
            begin
                write('Phan tu thu ',i,' = ');
                readln(A[i]);
            end;
        write('Nhap gia tri k: ');
        readln(k);
        Dau:=1; Cuoi:=N; Tim_thay:= false;
        while (Dau <= Cuoi) and not (Tim_thay) do
            begin
                Giua:=(Dau+Cuoi) div 2;
                if A[Giua] = k then
                    Tim_thay:= true
                    else
                        if A[Giua] > k then Cuoi:= Giua - 1
                            else Dau:= Giua+1;
            end;
        if Tim_thay then writeln('Chi so tim duoc la: ', Giua)
            else writeln('Khong tim thay');
    readln
end.
    