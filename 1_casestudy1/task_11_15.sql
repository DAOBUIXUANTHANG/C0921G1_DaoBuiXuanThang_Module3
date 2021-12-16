use furama;

/*11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những 
khách hàng có ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.*/

select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem
from loai_khach lk join khach_hang kh on  lk.ma_loai_khach = kh.ma_loai_khach
join hop_dong hd on hd.ma_khach_hang = kh.ma_khach_hang
join hop_dong_chi_tiet hdct on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem 
where lk.ten_loai_khach = 'Diamond' and (kh.dia_chi like '%Vinh%' or kh.dia_chi like '%Quảng Ngãi%');

select * from dich_vu_di_kem;

/* task 12.	Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem 
(được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021. */

-- select hd.ma_hop_dong , 
-- nv.ho_ten ho_ten_nv , 
-- kh.ho_ten ho_ten_kh , 
-- kh.so_dien_thoai sdt_kh , 
-- dv.ten_dich_vu , 
-- hd.tien_dat_coc ,
-- sum(hdct.ma_dich_vu_di_kem) so_luong_dich_vu_di_kem
-- from nhan_vien nv join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
-- join khach_hang kh on kh.ma_khach_hang = hd.ma_khach_hang
-- join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
-- join hop_dong_chi_tiet hdct on hdct.ma_hop_dong = hd.ma_hop_dong
-- join dich_vu_di_kem dvdk on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
-- group by hd.ma_hop_dong
-- having year(hd.ngay_lam_hop_dong) = 2020;

/*task 13.	Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách hàng đã đặt phòng. 
(Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).*/

select dvdk.ma_dich_vu_di_kem , dvdk.ten_dich_vu_di_kem , count(dvdk.ma_dich_vu_di_kem) so_lan_su_dung
from dich_vu_di_kem dvdk join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
group by hd.ma_khach_hang ;

/*task 14.	Hiển thị thông tin tất cả các Dịch vụ đi kèm chỉ mới được sử dụng một lần duy nhất. 
Thông tin hiển thị bao gồm ma_hop_dong, ten_loai_dich_vu, ten_dich_vu_di_kem, so_lan_su_dung (được tính dựa trên việc count các ma_dich_vu_di_kem).*/
select hd.ma_hop_dong , dvdk.ten_dich_vu_di_kem , dv.ten_dich_vu , count(hdct.ma_dich_vu_di_kem)
from dich_vu_di_kem dvdk join hop_dong_chi_tiet hdct on dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
join hop_dong hd on hd.ma_hop_dong = hdct.ma_hop_dong
join dich_vu dv on dv.ma_dich_vu = hd.ma_dich_vu
group by hdct.ma_dich_vu_di_kem
having count(hdct.ma_dich_vu_di_kem) = 1
order by hd.ma_hop_dong;


/*task 15.	Hiển thi thông tin của tất cả nhân viên bao gồm 
ma_nhan_vien, ho_ten, ten_trinh_do, ten_bo_phan, so_dien_thoai, dia_chi mới chỉ lập được tối đa 3 hợp đồng từ năm 2020 đến 2021.*/

select nv.ma_nhan_vien , nv.ho_ten , td.ten_trinh_do ,bp.ten_bo_phan, nv.so_dien_thoai , nv.dia_chi
from nhan_vien nv join hop_dong hd on nv.ma_nhan_vien = hd.ma_nhan_vien
join trinh_do td on td.ma_trinh_do = nv.ma_trinh_do
join bo_phan bp on bp.ma_bo_phan = nv.ma_bo_phan
group by hd.ma_nhan_vien
having count(hd.ma_nhan_vien) < 4


