#include <stdio.h>
#include <stdlib.h>
#include <memory.h>

void menu() {
    printf("\n==========\n");
    printf("1.Them moi sinh vien.\n");
    printf("2.Hien thi danh sach sinh vien.\n");
    printf("3.Luu danh sach sinh vien ra file.\n");
    printf("4.Doc danh sach sinh vien tu file.\n");
    printf("5.Thoat chuong trinh .\n");
    printf("Hay lua chon cac chuc nang tren cua chuong trinh\n");
    printf("==========\n");
}

typedef struct {

    char TEN[50];
    char SDT[10];
    char MSSV[10];
} SinhVien;
SinhVien thongTinSinhVien[10];

//Hàm lưu danh sách
void luuDanhSach() {
    FILE *fp = fopen("../danhsachsinhvien.txt", "a+");
    for (int j = 0; j < 1; ++j) {
        fprintf(fp, "%-9s|  %-15s|  %5s\n", thongTinSinhVien[j].TEN, thongTinSinhVien[j].SDT, thongTinSinhVien[j].MSSV);
    }
    fclose(fp);
}

void hienThiDanhSach() {
printf("%-9s| %-15s| %9s","MSSV","TEN","SDT\n");
    printf("%-9s| %-15s| %9s", thongTinSinhVien[0].MSSV, thongTinSinhVien[0].TEN, thongTinSinhVien[0].SDT);
}
void docDanhSachTuFile() {
    char myVar[5000];
    FILE *fp = fopen("../danhsachsinhvien.txt", "a+");
    while (fgets(myVar, 5000, fp) != NULL) {
        printf("%s", myVar);
    }
}
//Hàm Thêm mới sinh viên
void themMoiSinhVien() {
    printf("Hay nhap thong tin sau cua cac sinh vien\n");
    for (int i = 0; i < 1; i++) {
        printf("Ten cua sinh vien thu %d:\n", i + 1);
        fgets(thongTinSinhVien[0].TEN, sizeof(thongTinSinhVien[0].TEN) * sizeof(char), stdin);
        if (!strchr(thongTinSinhVien[0].TEN, '\n')) {
            while (fgetc(stdin) != '\n');
        }
        thongTinSinhVien[0].TEN[strlen(thongTinSinhVien[0].TEN)-1] = ' ';
        printf("SDT cua sinh vien thu %d:\n", i + 1);
        fgets(thongTinSinhVien[0].SDT, sizeof(thongTinSinhVien[0].SDT) * sizeof(int), stdin);
        if (!strchr(thongTinSinhVien[0].SDT, '\n')) {
            while (fgetc(stdin) != '\n');
        }
        thongTinSinhVien[0].SDT[strlen(thongTinSinhVien[0].SDT)-1] = ' ';
        printf("MSSV cua sinh vien thu %d:\n", i + 1);
        fgets(thongTinSinhVien[0].MSSV, sizeof(thongTinSinhVien[0].MSSV) * sizeof(char), stdin);
        if (!strchr(thongTinSinhVien[0].MSSV, '\n')) {
            while (fgetc(stdin) != '\n');
        }
        thongTinSinhVien[0].MSSV[strlen(thongTinSinhVien[0].MSSV)-1] = ' ';
        if (strlen(thongTinSinhVien[0].MSSV) <= 5) {
            printf("MSSV khong du 5 ky tu.Xin moi nhap lai\n");
            themMoiSinhVien();
        }
    }
}
    void lamMoiThu() {
        int luaChon;
        scanf("%d", &luaChon);
        getchar();
        switch (luaChon) {
            case 1:
                themMoiSinhVien();
               lamMoiThu();
                break;
            case 2:
                hienThiDanhSach();
                lamMoiThu();
                break;
            case 3:
                luuDanhSach();
                lamMoiThu();
                break;
            case 4:
                docDanhSachTuFile();
                lamMoiThu();
                break;
            case 5:
                printf("Thoat chuong trinh\n");
                exit(0);
            default:
                printf("Khong co lua chon phu hop. Thoat chuong trinh\n");
                exit(0);
        }
    }
    int main() {
        menu();
        lamMoiThu();
        return 0;
    }
