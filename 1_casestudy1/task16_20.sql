use furama;
/*task 16.	Xóa những Nhân viên chưa từng lập được hợp đồng nào từ năm 2019 đến năm 2021.*/

select ma_nhan_vien , ho_ten
from nhan_vien 
where ma_nhan_vien not in (select distinct ma_nhan_vien from hop_dong where year(ngay_lam_hop_dong) between 2020 and 2021);

select * from nhan_vien;

set SQL_safe_update = 0;
delete from nhan_vien
where ma_nhan_vien not in (select distinct ma_nhan_vien from hop_dong where year(ngay_lam_hop_dong) between 2020 and 2021);
set SQL_safe_update = 1;

/* task17.	Cập nhật thông tin những khách hàng có ten_loai_khach từ Platinum lên Diamond, 
chỉ cập nhật những khách hàng đã từng đặt phòng với Tổng Tiền thanh toán trong năm 2021 là lớn hơn 10.000.000 VNĐ. */



/*18.	Xóa những khách hàng có hợp đồng trước năm 2021 (chú ý ràng buộc giữa các bảng). */
-- kiem tra ket qua
select * from khach_hang where khach_hang.ma_khach_hang in (select hop_dong.ma_khach_hang from hop_dong where year(ngay_lam_hop_dong) < 2021);

-- xoa
set foreign_key_check = 0 ;
delete from khach_hang where khach_hang.ma_khach_hang in (select hop_dong.ma_khach_hang from hop_dong where year(ngay_lam_hop_dong) < 2021);

/* task 19.	Cập nhật giá cho các dịch vụ đi kèm được sử dụng trên 10 lần trong năm 2020 lên gấp đôi.*/
select * from hop_dong_chi_tiet;
select * from dich_vu_di_kem dvdk where dvdk.ma_dich_vu_di_kem in ( select hop_dong_chi_tiet.ma_dich_vu_di_kem from hop_dong_chi_tiet where hop_dong_chi_tiet.so_luong > 10);
-- xoa
update dich_vu_di_kem dvdk
set dvdk.gia = dvdk.gia * 2 
where dvdk.ma_dich_vu_di_kem in ( select hop_dong_chi_tiet.ma_dich_vu_di_kem from hop_dong_chi_tiet where hop_dong_chi_tiet.so_luong > 10);

/*task 20.	Hiển thị thông tin của tất cả các nhân viên và khách hàng có trong hệ thống, 
thông tin hiển thị bao gồm id (ma_nhan_vien, ma_khach_hang), ho_ten, email, so_dien_thoai, ngay_sinh, dia_chi. */

select nv.ma_nhan_vien id , nv.ho_ten ,  nv.email , nv.so_dien_thoai , nv.dia_chi
from nhan_vien nv
union all
select  kh.ma_khach_hang id , kh.ho_ten ,  kh.email , kh.so_dien_thoai , kh.dia_chi
from khach_hang kh