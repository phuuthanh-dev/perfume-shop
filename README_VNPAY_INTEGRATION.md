# VNPay Payment Integration - Demo Implementation

## 📋 Tổng quan
Đã tích hợp hệ thống thanh toán VNPay giả lập vào Perfume Shop với các tính năng:

### ✨ Tính năng chính
- **Lựa chọn phương thức thanh toán**: Wallet hoặc VNPay
- **Countdown timer**: 30 giây để hoàn thành thanh toán
- **Giao diện VNPay**: Mô phỏng giao diện thật của VNPay
- **Xử lý kết quả**: Success/Failed/Timeout/Cancelled
- **Email confirmation**: Gửi email xác nhận khi thanh toán thành công

### 🗂️ Files đã thêm/sửa đổi

#### Files mới:
1. **VNPayServlet.java** - Servlet xử lý thanh toán VNPay
2. **vnpay_payment.jsp** - Trang thanh toán VNPay với countdown
3. **payment.css** - CSS cho giao diện thanh toán
4. **README_VNPAY_INTEGRATION.md** - File hướng dẫn này

#### Files đã sửa đổi:
1. **viewcart.jsp** - Thêm lựa chọn phương thức thanh toán

### 🔄 Luồng hoạt động

```
1. User chọn sản phẩm → Giỏ hàng
2. Tại trang Checkout, chọn phương thức thanh toán:
   - Wallet: Sử dụng logic cũ (trừ tiền từ ví)
   - VNPay: Chuyển đến trang VNPay
3. Trang VNPay:
   - Hiển thị thông tin đơn hàng
   - Countdown 30 giây
   - Nút Pay Now / Cancel
4. Kết quả:
   - Success: Tạo order, gửi email, về trang cart
   - Failed/Cancelled/Timeout: Về trang cart với thông báo lỗi
```

### 🎮 Cách test

1. **Thanh toán bằng Wallet** (logic cũ):
   - Chọn "Pay with Wallet"
   - Click "CHECKOUT"

2. **Thanh toán bằng VNPay** (mới):
   - Chọn "Pay with VNPay"
   - Click "CHECKOUT" 
   - Được chuyển đến trang VNPay
   - Có thể:
     - Click "Pay Now" (90% thành công, 10% thất bại)
     - Click "Cancel Payment"
     - Chờ 30 giây để timeout

### 🔧 Cấu hình

#### URL Patterns:
- `/vnpay` - VNPay payment page
- `/vnpay` POST - Process payment result

#### Session Attributes:
- `vnpay_amount` - Số tiền thanh toán
- `vnpay_start_time` - Thời gian bắt đầu (dùng làm Order ID)

### 🎨 Giao diện VNPay
- **Logo VNPay** giả lập
- **Countdown circle** với màu sắc thay đổi theo thời gian
- **Thông tin đơn hàng** chi tiết
- **Security notice** 
- **Loading animation** khi processing

### ⚙️ Cài đặt bảo mật
- **Session validation**: Kiểm tra user và cart
- **Timeout handling**: Tự động cancel sau 30 giây
- **Payment processing lock**: Tránh double-click
- **Confirm dialog**: Xác nhận khi cancel

### 📊 Thống kê Demo
- **Success rate**: 90% (có thể điều chỉnh)
- **Processing time**: 2.5 giây
- **Timeout**: 30 giây
- **Auto-redirect**: Có

### 🚀 Triển khai Production
Để chuyển sang VNPay thật:
1. Thay đổi URL endpoint trong VNPayServlet
2. Thêm VNPay API credentials
3. Implement proper signature validation
4. Add real payment processing logic
5. Update security measures

### 🐛 Troubleshooting
- Nếu không thể truy cập `/vnpay`: Kiểm tra servlet mapping
- Nếu countdown không hoạt động: Kiểm tra JavaScript
- Nếu CSS không load: Kiểm tra đường dẫn `css/payment.css`

---
**Lưu ý**: Đây là implementation demo, không sử dụng cho production thực tế.
