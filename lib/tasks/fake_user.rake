# require "rake"

namespace :db do
  desc "Fake user"
  task fake_user: :environment do
    users = []
    users << User.new(email: "admin@gmail.com", username: "admin@gmail.com", name: "admin",
      password: "123456", password_confirmation: "123456", is_admin: true)

    users << User.new(email: "giang.nguyenthiha@hust.edu.vn", username: "giang.nguyenthiha@hust.edu.vn", name: "giang.nguyenthiha", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.doithilan@hust.edu.vn", username: "huong.doithilan@hust.edu.vn", name: "huong.doithilan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khoi.lechien@hust.edu.vn", username: "khoi.lechien@hust.edu.vn", name: "khoi.lechien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tho.nguyenxuan@hust.edu.vn", username: "tho.nguyenxuan@hust.edu.vn", name: "tho.nguyenxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "cuong.lengoc@hust.edu.vn", username: "cuong.lengoc@hust.edu.vn", name: "cuong.lengoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.nguyenhong@hust.edu.vn", username: "thanh.nguyenhong@hust.edu.vn", name: "thanh.nguyenhong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thu.doquang@hust.edu.vn", username: "thu.doquang@hust.edu.vn", name: "thu.doquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thai.tranviet@hust.edu.vn", username: "thai.tranviet@hust.edu.vn", name: "thai.tranviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thua.nguyenduc@hust.edu.vn", username: "thua.nguyenduc@hust.edu.vn", name: "thua.nguyenduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.huynhte@hust.edu.vn", username: "trung.huynhte@hust.edu.vn", name: "trung.huynhte", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duyen.dinhthikieu@hust.edu.vn", username: "duyen.dinhthikieu@hust.edu.vn", name: "duyen.dinhthikieu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "anh.nguyenngoc@hust.edu.vn", username: "anh.nguyenngoc@hust.edu.vn", name: "anh.nguyenngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "binh.buiquang@hust.edu.vn", username: "binh.buiquang@hust.edu.vn", name: "binh.buiquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "giang.nguyentruong@hust.edu.vn", username: "giang.nguyentruong@hust.edu.vn", name: "giang.nguyentruong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ngoc.nguyenthiminh@hust.edu.vn", username: "ngoc.nguyenthiminh@hust.edu.vn", name: "ngoc.nguyenthiminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "quang.tranhuy@hust.edu.vn", username: "quang.tranhuy@hust.edu.vn", name: "quang.tranhuy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thuyet.kieuquang@hust.edu.vn", username: "thuyet.kieuquang@hust.edu.vn", name: "thuyet.kieuquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "toan.truongminh@hust.edu.vn", username: "toan.truongminh@hust.edu.vn", name: "toan.truongminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "vinh.doanchien@hust.edu.vn", username: "vinh.doanchien@hust.edu.vn", name: "vinh.doanchien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dan.daotien@hust.edu.vn", username: "dan.daotien@hust.edu.vn", name: "dan.daotien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "giang.nguyenlong@hust.edu.vn", username: "giang.nguyenlong@hust.edu.vn", name: "giang.nguyenlong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "long.leduy@hust.edu.vn", username: "long.leduy@hust.edu.vn", name: "long.leduy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "mai.dothituyet@hust.edu.vn", username: "mai.dothituyet@hust.edu.vn", name: "mai.dothituyet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phat.huynhtan@hust.edu.vn", username: "phat.huynhtan@hust.edu.vn", name: "phat.huynhtan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tai.nguyentrong@hust.edu.vn", username: "tai.nguyentrong@hust.edu.vn", name: "tai.nguyentrong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyenviet@hust.edu.vn", username: "trung.nguyenviet@hust.edu.vn", name: "trung.nguyenviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tung.tranduc@hust.edu.vn", username: "tung.tranduc@hust.edu.vn", name: "tung.tranduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dat.nguyentien@hust.edu.vn", username: "dat.nguyentien@hust.edu.vn", name: "dat.nguyentien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hao.tranthimy@hust.edu.vn", username: "hao.tranthimy@hust.edu.vn", name: "hao.tranthimy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "kim.hoangthi@hust.edu.vn", username: "kim.hoangthi@hust.edu.vn", name: "kim.hoangthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hanh.hoangthi@hust.edu.vn", username: "hanh.hoangthi@hust.edu.vn", name: "hanh.hoangthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.tranthilan@hust.edu.vn", username: "huong.tranthilan@hust.edu.vn", name: "huong.tranthilan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "kien.levan@hust.edu.vn", username: "kien.levan@hust.edu.vn", name: "kien.levan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lan.ngoque@hust.edu.vn", username: "lan.ngoque@hust.edu.vn", name: "lan.ngoque", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nga.nguyenthianh@hust.edu.vn", username: "nga.nguyenthianh@hust.edu.vn", name: "nga.nguyenthianh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thang.tranviet@hust.edu.vn", username: "thang.tranviet@hust.edu.vn", name: "thang.tranviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.maithi@hust.edu.vn", username: "thanh.maithi@hust.edu.vn", name: "thanh.maithi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyenxuan@hust.edu.vn", username: "trung.nguyenxuan@hust.edu.vn", name: "trung.nguyenxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "van.ngothanh@hust.edu.vn", username: "van.ngothanh@hust.edu.vn", name: "van.ngothanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "xuan.dinhthanh@hust.edu.vn", username: "xuan.dinhthanh@hust.edu.vn", name: "xuan.dinhthanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dung.hotuan@hust.edu.vn", username: "dung.hotuan@hust.edu.vn", name: "dung.hotuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duyen.phamthimai@hust.edu.vn", username: "duyen.phamthimai@hust.edu.vn", name: "duyen.phamthimai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ha.nguyenthithu@hust.edu.vn", username: "ha.nguyenthithu@hust.edu.vn", name: "ha.nguyenthithu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hanh.luongminh@hust.edu.vn", username: "hanh.luongminh@hust.edu.vn", name: "hanh.luongminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.hathidang@hust.edu.vn", username: "huong.hathidang@hust.edu.vn", name: "huong.hathidang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "truong.nguyenquang@hust.edu.vn", username: "truong.nguyenquang@hust.edu.vn", name: "truong.nguyenquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "doan.nguyenquoc@hust.edu.vn", username: "doan.nguyenquoc@hust.edu.vn", name: "doan.nguyenquoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dong.hoanganh@hust.edu.vn", username: "dong.hoanganh@hust.edu.vn", name: "dong.hoanganh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dung.letien@hust.edu.vn", username: "dung.letien@hust.edu.vn", name: "dung.letien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.hoangthu@hust.edu.vn", username: "huong.hoangthu@hust.edu.vn", name: "huong.hoangthu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huyen.nguyenthi@hust.edu.vn", username: "huyen.nguyenthi@hust.edu.vn", name: "huyen.nguyenthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lan.lethi@hust.edu.vn", username: "lan.lethi@hust.edu.vn", name: "lan.lethi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lan.hoangthi@hust.edu.vn", username: "lan.hoangthi@hust.edu.vn", name: "lan.hoangthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phuong.phamnguyen@hust.edu.vn", username: "phuong.phamnguyen@hust.edu.vn", name: "phuong.phamnguyen", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thao.luongthiphuong@hust.edu.vn", username: "thao.luongthiphuong@hust.edu.vn", name: "thao.luongthiphuong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ha.tranthiviet@hust.edu.vn", username: "ha.tranthiviet@hust.edu.vn", name: "ha.tranthiviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trang.buithithu@hust.edu.vn", username: "trang.buithithu@hust.edu.vn", name: "trang.buithithu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "doanh.nguyentrong@hust.edu.vn", username: "doanh.nguyentrong@hust.edu.vn", name: "doanh.nguyentrong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dung.nguyenanh@hust.edu.vn", username: "dung.nguyenanh@hust.edu.vn", name: "dung.nguyenanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hieu.phamngoc@hust.edu.vn", username: "hieu.phamngoc@hust.edu.vn", name: "hieu.phamngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huyen.nguyenthi1@hust.edu.vn", username: "huyen.nguyenthi1@hust.edu.vn", name: "huyen.nguyenthi1", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "kien.nguyenngoc@hust.edu.vn", username: "kien.nguyenngoc@hust.edu.vn", name: "kien.nguyenngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lan.phungxuan@hust.edu.vn", username: "lan.phungxuan@hust.edu.vn", name: "lan.phungxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "linh.taongoc@hust.edu.vn", username: "linh.taongoc@hust.edu.vn", name: "linh.taongoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "long.nguyenngoc@hust.edu.vn", username: "long.nguyenngoc@hust.edu.vn", name: "long.nguyenngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ninh.nguyenhuy@hust.edu.vn", username: "ninh.nguyenhuy@hust.edu.vn", name: "ninh.nguyenhuy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phi.nguyentruong@hust.edu.vn", username: "phi.nguyentruong@hust.edu.vn", name: "phi.nguyentruong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phuc.truongduc@hust.edu.vn", username: "phuc.truongduc@hust.edu.vn", name: "phuc.truongduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "quynh.nguyenxuan@hust.edu.vn", username: "quynh.nguyenxuan@hust.edu.vn", name: "quynh.nguyenxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "son.truonghoanh@hust.edu.vn", username: "son.truonghoanh@hust.edu.vn", name: "son.truonghoanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tam.buingoc@hust.edu.vn", username: "tam.buingoc@hust.edu.vn", name: "tam.buingoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thoa.macthi@hust.edu.vn", username: "thoa.macthi@hust.edu.vn", name: "thoa.macthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trang.luuquynh@hust.edu.vn", username: "trang.luuquynh@hust.edu.vn", name: "trang.luuquynh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyenkien@hust.edu.vn", username: "trung.nguyenkien@hust.edu.vn", name: "trung.nguyenkien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyenthanh@hust.edu.vn", username: "trung.nguyenthanh@hust.edu.vn", name: "trung.nguyenthanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuan.levan@hust.edu.vn", username: "tuan.levan@hust.edu.vn", name: "tuan.levan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tung.tranthanh@hust.edu.vn", username: "tung.tranthanh@hust.edu.vn", name: "tung.tranthanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dich.tranvan@hust.edu.vn", username: "dich.tranvan@hust.edu.vn", name: "dich.tranvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duc.nguyenviet@hust.edu.vn", username: "duc.nguyenviet@hust.edu.vn", name: "duc.nguyenviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "cuc.nguyenthikim@hust.edu.vn", username: "cuc.nguyenthikim@hust.edu.vn", name: "cuc.nguyenthikim", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "cuong.hoangduc@hust.edu.vn", username: "cuong.hoangduc@hust.edu.vn", name: "cuong.hoangduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dung.vutien@hust.edu.vn", username: "dung.vutien@hust.edu.vn", name: "dung.vutien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hai.hoanghong@hust.edu.vn", username: "hai.hoanghong@hust.edu.vn", name: "hai.hoanghong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khai.phamxuan@hust.edu.vn", username: "khai.phamxuan@hust.edu.vn", name: "khai.phamxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "mai.nguyenthiphuong@hust.edu.vn", username: "mai.nguyenthiphuong@hust.edu.vn", name: "mai.nguyenthiphuong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thang.vutoan@hust.edu.vn", username: "thang.vutoan@hust.edu.vn", name: "thang.vutoan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyenthanh2@hust.edu.vn", username: "trung.nguyenthanh2@hust.edu.vn", name: "trung.nguyenthanh2", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuan.truongcong@hust.edu.vn", username: "tuan.truongcong@hust.edu.vn", name: "tuan.truongcong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tung.vuthanh@hust.edu.vn", username: "tung.vuthanh@hust.edu.vn", name: "tung.vuthanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "vinh.nguyenvan@hust.edu.vn", username: "vinh.nguyenvan@hust.edu.vn", name: "vinh.nguyenvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dong.nguyenthanh@hust.edu.vn", username: "dong.nguyenthanh@hust.edu.vn", name: "dong.nguyenthanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "bao.hoangvan@hust.edu.vn", username: "bao.hoangvan@hust.edu.vn", name: "bao.hoangvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ha.nguyenxuan@hust.edu.vn", username: "ha.nguyenxuan@hust.edu.vn", name: "ha.nguyenxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hai.phamminh1@hust.edu.vn", username: "hai.phamminh1@hust.edu.vn", name: "hai.phamminh1", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hang.phamthithu@hust.edu.vn", username: "hang.phamthithu@hust.edu.vn", name: "hang.phamthithu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hung.nguyenchi@hust.edu.vn", username: "hung.nguyenchi@hust.edu.vn", name: "hung.nguyenchi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huy.vule@hust.edu.vn", username: "huy.vule@hust.edu.vn", name: "huy.vule", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huy.nguyenquang@hust.edu.vn", username: "huy.nguyenquang@hust.edu.vn", name: "huy.nguyenquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khoa.nguyentuan@hust.edu.vn", username: "khoa.nguyentuan@hust.edu.vn", name: "khoa.nguyentuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lam.dangbao@hust.edu.vn", username: "lam.dangbao@hust.edu.vn", name: "lam.dangbao", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nga.nguyenthithu1@hust.edu.vn", username: "nga.nguyenthithu1@hust.edu.vn", name: "nga.nguyenthithu1", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phuc.phamhong@hust.edu.vn", username: "phuc.phamhong@hust.edu.vn", name: "phuc.phamhong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "son.nguyenhai@hust.edu.vn", username: "son.nguyenhai@hust.edu.vn", name: "son.nguyenhai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thai.nguyenhong@hust.edu.vn", username: "thai.nguyenhong@hust.edu.vn", name: "thai.nguyenhong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.vuongvan@hust.edu.vn", username: "thanh.vuongvan@hust.edu.vn", name: "thanh.vuongvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tinh.trinhdong@hust.edu.vn", username: "tinh.trinhdong@hust.edu.vn", name: "tinh.trinhdong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "toan.dinhkhac@hust.edu.vn", username: "toan.dinhkhac@hust.edu.vn", name: "toan.dinhkhac", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "truong.dovan@hust.edu.vn", username: "truong.dovan@hust.edu.vn", name: "truong.dovan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuan.nguyenanh@hust.edu.vn", username: "tuan.nguyenanh@hust.edu.vn", name: "tuan.nguyenanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hoang.nguyenquang@hust.edu.vn", username: "hoang.nguyenquang@hust.edu.vn", name: "hoang.nguyenquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.nguyenthivan@hust.edu.vn", username: "huong.nguyenthivan@hust.edu.vn", name: "huong.nguyenthivan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khoa.dodang@hust.edu.vn", username: "khoa.dodang@hust.edu.vn", name: "khoa.dodang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khoi.phanbui@hust.edu.vn", username: "khoi.phanbui@hust.edu.vn", name: "khoi.phanbui", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phong.dinhvan@hust.edu.vn", username: "phong.dinhvan@hust.edu.vn", name: "phong.dinhvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phuong.nguyenminh@hust.edu.vn", username: "phuong.nguyenminh@hust.edu.vn", name: "phuong.nguyenminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "quyen.nguyenvan@hust.edu.vn", username: "quyen.nguyenvan@hust.edu.vn", name: "quyen.nguyenvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thao.thaiphuong@hust.edu.vn", username: "thao.thaiphuong@hust.edu.vn", name: "thao.thaiphuong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuan.nguyenthaiminh@hust.edu.vn", username: "tuan.nguyenthaiminh@hust.edu.vn", name: "tuan.nguyenthaiminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dien.nguyenphong@hust.edu.vn", username: "dien.nguyenphong@hust.edu.vn", name: "dien.nguyenphong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "an.phamduc@hust.edu.vn", username: "an.phamduc@hust.edu.vn", name: "an.phamduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "giang.nguyenthiphuong@hust.edu.vn", username: "giang.nguyenthiphuong@hust.edu.vn", name: "giang.nguyenthiphuong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hai.nguyentrong@hust.edu.vn", username: "hai.nguyentrong@hust.edu.vn", name: "hai.nguyentrong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hiep.nghiemquoc@hust.edu.vn", username: "hiep.nghiemquoc@hust.edu.vn", name: "hiep.nghiemquoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "khoe.dinhduy@hust.edu.vn", username: "khoe.dinhduy@hust.edu.vn", name: "khoe.dinhduy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "long.banhtien@hust.edu.vn", username: "long.banhtien@hust.edu.vn", name: "long.banhtien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "minh.nguyenthihong@hust.edu.vn", username: "minh.nguyenthihong@hust.edu.vn", name: "minh.nguyenthihong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ngan.nguyenthihong@hust.edu.vn", username: "ngan.nguyenthihong@hust.edu.vn", name: "ngan.nguyenthihong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phong.daoba@hust.edu.vn", username: "phong.daoba@hust.edu.vn", name: "phong.daoba", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "quang.nguyenchi@hust.edu.vn", username: "quang.nguyenchi@hust.edu.vn", name: "quang.nguyenchi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "quang.nguyenhuu@hust.edu.vn", username: "quang.nguyenhuu@hust.edu.vn", name: "quang.nguyenhuu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "sinh.hoangvinh@hust.edu.vn", username: "sinh.hoangvinh@hust.edu.vn", name: "sinh.hoangvinh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "son.lethanh@hust.edu.vn", username: "son.lethanh@hust.edu.vn", name: "son.lethanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thai.tranxuan@hust.edu.vn", username: "thai.tranxuan@hust.edu.vn", name: "thai.tranxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "toan.nguyenduc@hust.edu.vn", username: "toan.nguyenduc@hust.edu.vn", name: "toan.nguyenduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuyen.buingoc@hust.edu.vn", username: "tuyen.buingoc@hust.edu.vn", name: "tuyen.buingoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "dong.nguyentien@hust.edu.vn", username: "dong.nguyentien@hust.edu.vn", name: "dong.nguyentien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "bao.legia@hust.edu.vn", username: "bao.legia@hust.edu.vn", name: "bao.legia", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "kien.letrung@hust.edu.vn", username: "kien.letrung@hust.edu.vn", name: "kien.letrung", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "kien.nguyentrung@hust.edu.vn", username: "kien.nguyentrung@hust.edu.vn", name: "kien.nguyentrung", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nghe.phamvan@hust.edu.vn", username: "nghe.phamvan@hust.edu.vn", name: "nghe.phamvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.nguyen@hust.edu.vn", username: "thanh.nguyen@hust.edu.vn", name: "thanh.nguyen", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thu.nguyenthi@hust.edu.vn", username: "thu.nguyenthi@hust.edu.vn", name: "thu.nguyenthi", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.nguyendac@hust.edu.vn", username: "trung.nguyendac@hust.edu.vn", name: "trung.nguyendac", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "trung.phamtien@hust.edu.vn", username: "trung.phamtien@hust.edu.vn", name: "trung.phamtien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "doan.tranthimai@hust.edu.vn", username: "doan.tranthimai@hust.edu.vn", name: "doan.tranthimai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duong.nguyentien@hust.edu.vn", username: "duong.nguyentien@hust.edu.vn", name: "duong.nguyentien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duy.hanle@hust.edu.vn", username: "duy.hanle@hust.edu.vn", name: "duy.hanle", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ha.nguyenthuc@hust.edu.vn", username: "ha.nguyenthuc@hust.edu.vn", name: "ha.nguyenthuc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hanh.buivan@hust.edu.vn", username: "hanh.buivan@hust.edu.vn", name: "hanh.buivan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lam.tran@hust.edu.vn", username: "lam.tran@hust.edu.vn", name: "lam.tran", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lan.vuhuy@hust.edu.vn", username: "lan.vuhuy@hust.edu.vn", name: "lan.vuhuy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "le.phanhuy@hust.edu.vn", username: "le.phanhuy@hust.edu.vn", name: "le.phanhuy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "long.trinhduy@hust.edu.vn", username: "long.trinhduy@hust.edu.vn", name: "long.trinhduy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.nguyenngoc@hust.edu.vn", username: "thanh.nguyenngoc@hust.edu.vn", name: "thanh.nguyenngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "toai.vudinh@hust.edu.vn", username: "toai.vudinh@hust.edu.vn", name: "toai.vudinh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuong.nguyenmanh@hust.edu.vn", username: "tuong.nguyenmanh@hust.edu.vn", name: "tuong.nguyenmanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "xa.nguyenxuan@hust.edu.vn", username: "xa.nguyenxuan@hust.edu.vn", name: "xa.nguyenxuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "anh.phamtuan@hust.edu.vn", username: "anh.phamtuan@hust.edu.vn", name: "anh.phamtuan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "anh.tranhoang@hust.edu.vn", username: "anh.tranhoang@hust.edu.vn", name: "anh.tranhoang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hong.domanh@hust.edu.vn", username: "hong.domanh@hust.edu.vn", name: "hong.domanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huong.nguyenthu@hust.edu.vn", username: "huong.nguyenthu@hust.edu.vn", name: "huong.nguyenthu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huy.nguyenduc@hust.edu.vn", username: "huy.nguyenduc@hust.edu.vn", name: "huy.nguyenduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "long.hoang@hust.edu.vn", username: "long.hoang@hust.edu.vn", name: "long.hoang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nga.nguyenthithu@hust.edu.vn", username: "nga.nguyenthithu@hust.edu.vn", name: "nga.nguyenthithu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "phuong.nguyenlan@hust.edu.vn", username: "phuong.nguyenlan@hust.edu.vn", name: "phuong.nguyenlan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "son.phamvan@hust.edu.vn", username: "son.phamvan@hust.edu.vn", name: "son.phamvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thuy.tranminh@hust.edu.vn", username: "thuy.tranminh@hust.edu.vn", name: "thuy.tranminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "anh.buituan@hust.edu.vn", username: "anh.buituan@hust.edu.vn", name: "anh.buituan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "bao.leduc@hust.edu.vn", username: "bao.leduc@hust.edu.vn", name: "bao.leduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "bo.dinhhong@hust.edu.vn", username: "bo.dinhhong@hust.edu.vn", name: "bo.dinhhong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duong.nguyenthuy@hust.edu.vn", username: "duong.nguyenthuy@hust.edu.vn", name: "duong.nguyenthuy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hai.tranthithanh@hust.edu.vn", username: "hai.tranthithanh@hust.edu.vn", name: "hai.tranthithanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hung.phamvan@hust.edu.vn", username: "hung.phamvan@hust.edu.vn", name: "hung.phamvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huyen.nguyenthingoc@hust.edu.vn", username: "huyen.nguyenthingoc@hust.edu.vn", name: "huyen.nguyenthingoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nam.legiang@hust.edu.vn", username: "nam.legiang@hust.edu.vn", name: "nam.legiang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "sy.letien@hust.edu.vn", username: "sy.letien@hust.edu.vn", name: "sy.letien", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thinh.buiduy@hust.edu.vn", username: "thinh.buiduy@hust.edu.vn", name: "thinh.buiduy", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thuan.luutrong@hust.edu.vn", username: "thuan.luutrong@hust.edu.vn", name: "thuan.luutrong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thuc.tranvan@hust.edu.vn", username: "thuc.tranvan@hust.edu.vn", name: "thuc.tranvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "toan.nguyenmanh@hust.edu.vn", username: "toan.nguyenmanh@hust.edu.vn", name: "toan.nguyenmanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "tuan.duongminh@hust.edu.vn", username: "tuan.duongminh@hust.edu.vn", name: "tuan.duongminh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "van.phan@hust.edu.vn", username: "van.phan@hust.edu.vn", name: "van.phan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "viet.dangthai@hust.edu.vn", username: "viet.dangthai@hust.edu.vn", name: "viet.dangthai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "vinh.dangvu@hust.edu.vn", username: "vinh.dangvu@hust.edu.vn", name: "vinh.dangvu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "binh.vuhoang@hust.edu.vn", username: "binh.vuhoang@hust.edu.vn", name: "binh.vuhoang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "chien.nguyenmanh@hust.edu.vn", username: "chien.nguyenmanh@hust.edu.vn", name: "chien.nguyenmanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "duong.dangthai@hust.edu.vn", username: "duong.dangthai@hust.edu.vn", name: "duong.dangthai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "ha.tranthison@hust.edu.vn", username: "ha.tranthison@hust.edu.vn", name: "ha.tranthison", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hai.dangvan@hust.edu.vn", username: "hai.dangvan@hust.edu.vn", name: "hai.dangvan", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hien.ngomanh@hust.edu.vn", username: "hien.ngomanh@hust.edu.vn", name: "hien.ngomanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hung.phanviet@hust.edu.vn", username: "hung.phanviet@hust.edu.vn", name: "hung.phanviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "huy.nguyenluong@hust.edu.vn", username: "huy.nguyenluong@hust.edu.vn", name: "huy.nguyenluong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "lam.thanhoangbao@hust.edu.vn", username: "lam.thanhoangbao@hust.edu.vn", name: "lam.thanhoangbao", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "manh.lehuu@hust.edu.vn", username: "manh.lehuu@hust.edu.vn", name: "manh.lehuu", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "minh.nguyenduc@hust.edu.vn", username: "minh.nguyenduc@hust.edu.vn", name: "minh.nguyenduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "minh.truonghong@hust.edu.vn", username: "minh.truonghong@hust.edu.vn", name: "minh.truonghong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "nga.buithanh@hust.edu.vn", username: "nga.buithanh@hust.edu.vn", name: "nga.buithanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thai.danghong@hust.edu.vn", username: "thai.danghong@hust.edu.vn", name: "thai.danghong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thanh.nguyentrong@hust.edu.vn", username: "thanh.nguyentrong@hust.edu.vn", name: "thanh.nguyentrong", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thao.nguyenmanh@hust.edu.vn", username: "thao.nguyenmanh@hust.edu.vn", name: "thao.nguyenmanh", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "thuy.nguyenduc@hust.edu.vn", username: "thuy.nguyenduc@hust.edu.vn", name: "thuy.nguyenduc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "viet.nguyenviet@hust.edu.vn", username: "viet.nguyenviet@hust.edu.vn", name: "viet.nguyenviet", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "vu.tranquang@hust.edu.vn", username: "vu.tranquang@hust.edu.vn", name: "vu.tranquang", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "vu.duongngoc@hust.edu.vn", username: "vu.duongngoc@hust.edu.vn", name: "vu.duongngoc", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "yen.tranthihai@hust.edu.vn", username: "yen.tranthihai@hust.edu.vn", name: "yen.tranthihai", password: "123456", password_confirmation: "123456", is_admin: false)
    users << User.new(email: "hiep.nguyenlien@hust.edu.vn", username: "hiep.nguyenlien@hust.edu.vn", name: "hiep.nguyenlien", password: "123456", password_confirmation: "123456", is_admin: false)

    User.import users
  end
end