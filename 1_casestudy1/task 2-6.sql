use furama;

/* task 2.hiển thị thông tin của tất cả nhân viên 
có trong hệ thống có tên bắt đầu là một trong 
các ký tự “H”, “T” hoặc “K” và có tối đa 15 kí tự.*/

select *
from nhan_vien 
where (ho_ten like 'H%' or ho_ten like 'T%' or ho_ten like 'K%') and char_length(ho_ten) < 16;

/*task 3: hien thi thong tin tat ca khach hang co do tuoi tu 18-50 va dia chi o DN hoac QT*/

select * 
from khach_hang 
where ( (year(now()) - year(ngay_sinh) ) > 18 and (year(now()) - year(ngay_sinh) ) < 50 ) and ((dia_chi LIKE '%Đà Nẵng%') OR (dia_chi LIKE '%Quảng Trị%'));

/*task 4.Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. 
Kết quả hiển thị được sắp xếp tăng dần theo số lần đặt phòng của khách hàng. 
Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”.*/

select kh.ma_khach_hang, kh.ho_ten , count(kh.ma_khach_hang) as 'so_lan_dat_phong'
from khach_hang kh join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
where kh.ma_loai_khach = 1
group by kh.ma_khach_hang
order by count(hd.ma_khach_hang);

/*5.	Hiển thị ma_khach_hang, ho_ten, ten_loai_khach, ma_hop_dong, ten_dich_vu, ngay_lam_hop_dong, ngay_ket_thuc, tong_tien 
-- (Với tổng tiền được tính theo công thức như sau: Chi Phí Thuê + Số Lượng * Giá, với Số Lượng và Giá là từ bảng dich_vu_di_kem, hop_dong_chi_tiet)
-- cho tất cả các khách hàng đã từng đặt phòng. (những khách hàng nào chưa từng đặt phòng cũng phải hiển thị ra).*/

select 
kh.ma_khach_hang , kh.ho_ten, lk.ten_loai_khach, hd.ma_hop_dong , dv.ten_dich_vu , hd.ngay_lam_hop_dong , hd.ngay_ket_thuc,
sum(ifnull(dv.chi_phi_thue,0)+ifnull(hdct.so_luong,0)*ifnull(dvdk.gia,0)) total
from khach_hang kh
left join loai_khach lk on kh.ma_loai_khach = lk.ma_loai_khach
left join hop_dong hd on kh.ma_khach_hang =hd.ma_khach_hang
left join dich_vu dv on hd.ma_dich_vu = dv.ma_dich_vu
left join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
left join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
left join loai_dich_vu ldv on ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
group by ma_hop_dong 
order by ma_khach_hang asc ,ma_hop_dong desc;

/*task 6 */

select dv.ma_dich_vu ,dv.ten_dich_vu , dv.dien_tich , dv.chi_phi_thue , ldv.ten_loai_dich_vu
from dich_vu dv join hop_dong hd on dv.ma_dich_vu = hd.ma_dich_vu
join loai_dich_vu ldv on dv.ma_loai_dich_vu = ldv.ma_loai_dich_vu
where dv.ma_dich_vu not in (select hd.ma_dich_vu
from hop_dong
where ((month(hd.ngay_lam_hop_dong) between 1 and 3)
and year(hd.ngay_lam_hop_dong)=2021))
group by dv.ten_dich_vu;