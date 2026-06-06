# ♻️ Hệ thống phân loại rác tự động · YOLOv8 + Webcam + Cần gạt IoT

<h2 align="center">
    <a href="https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin">
    🎓 Faculty of Information Technology (DaiNam University)
    </a>
</h2>

<h2 align="center">
   Smart Waste Sorter — AI-Powered Waste Classification System
</h2>

<div align="center">
    <p align="center">
        <img src="docs/aiotlab_logo.png" width="170"/>
        <img src="docs/fitdnu_logo.png" width="180"/>
        <img src="docs/dnu_logo.png" width="200"/>
    </p>

[![AIoTLab](https://img.shields.io/badge/AIoTLab-green?style=for-the-badge)](https://www.facebook.com/DNUAIoTLab)
[![Faculty of Information Technology](https://img.shields.io/badge/Faculty%20of%20Information%20Technology-blue?style=for-the-badge)](https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin)
[![DaiNam University](https://img.shields.io/badge/DaiNam%20University-orange?style=for-the-badge)](https://dainam.edu.vn)
[![Python](https://img.shields.io/badge/Python-3.10+-blue?style=for-the-badge&logo=python)](https://python.org)
[![YOLOv8](https://img.shields.io/badge/YOLOv8-Object%20Detection-red?style=for-the-badge)](https://github.com/ultralytics/ultralytics)
[![Arduino](https://img.shields.io/badge/Arduino-Uno-teal?style=for-the-badge&logo=arduino)](https://www.arduino.cc)

</div>

---

# Smart Waste Sorter ♻️🤖

**Hệ thống phân loại rác tự động** sử dụng trí tuệ nhân tạo, webcam laptop và cơ cấu cần gạt IoT.

Hệ thống có nhiệm vụ nhận diện vật thể rác thông qua hình ảnh từ camera, phân loại rác thành các nhóm cơ bản, hiển thị kết quả trên dashboard và điều khiển servo/cần gạt đưa rác về đúng ngăn chứa tương ứng.

> Hệ thống không sử dụng Blockchain, không sử dụng MetaMask, không sử dụng băng chuyền và không tích hợp các công nghệ ngoài phạm vi bài toán phân loại rác. Trọng tâm của đề tài là YOLOv8, webcam laptop, dashboard thống kê và cần gạt IoT.

---

## 👤 Thông tin sinh viên

| Thông tin | Nội dung |
|---|---|
| Họ tên | Bùi Tuấn Dương |
| Mã sinh viên | 1671020071 |
| Lớp | CNTT 16-03 |
| Khoa | Công nghệ thông tin |
| Trường | Đại học Đại Nam |
| Email | buibanh2k4@gmail.com |

---

## 🚀 Hình ảnh các chức năng

<p align="center">
  <img src="docs/project photo/1.png" alt="Webcam laptop nhận hình ảnh rác" width="800"/>
</p>
<p align="center">
  <em>Webcam laptop nhận hình ảnh rác</em>
</p>

<p align="center">
  <img src="docs/project photo/2.png" alt="YOLOv8 nhận diện vật thể rác" width="700"/>
</p>
<p align="center">
  <em>YOLOv8 nhận diện vật thể rác</em>
</p>

<p align="center">
  <img src="docs/project photo/3.png" alt="Kết quả phân loại rác" width="700"/>
</p>
<p align="center">
  <em>Kết quả phân loại bốn nhóm rác</em>
</p>

<p align="center">
  <img src="docs/project photo/4.png" alt="Dashboard thống kê" width="700"/>
</p>
<p align="center">
  <em>Dashboard thống kê số lượng rác</em>
</p>

<p align="center">
  <img src="docs/project photo/5.png" alt="Gửi lệnh điều khiển IoT" width="700"/>
</p>
<p align="center">
  <em>Gửi lệnh điều khiển đến IoT</em>
</p>

<p align="center">
  <img src="docs/project photo/6.png" alt="Servo điều khiển cần gạt" width="700"/>
</p>
<p align="center">
  <em>Servo điều khiển cần gạt</em>
</p>

<p align="center">
  <img src="docs/project photo/7.png" alt="Cơ cấu cần gạt IoT" width="700"/>
</p>
<p align="center">
  <em>Cơ cấu cần gạt IoT</em>
</p>

<p align="center">
  <img src="docs/project photo/8.png" alt="Mô hình hoàn chỉnh" width="700"/>
</p>
<p align="center">
  <em>Mô hình hoàn chỉnh của hệ thống</em>
</p>

---

## 📌 Tóm tắt đề tài

Đề tài tập trung xây dựng một hệ thống phân loại rác tự động dựa trên trí tuệ nhân tạo, webcam laptop và cơ cấu cần gạt IoT. Mục tiêu chính của hệ thống là nhận diện vật thể rác thông qua hình ảnh từ camera, phân loại rác thành các nhóm cơ bản và điều khiển cần gạt đưa rác về đúng ngăn chứa tương ứng.

Hệ thống sử dụng mô hình **YOLOv8** để nhận diện rác, giao diện **Web Dashboard** để hiển thị kết quả nhận diện, thống kê số lượng rác và gửi tín hiệu điều khiển đến phần IoT. Phần IoT sử dụng **Arduino Uno + Servo SG90** kết hợp với cần gạt để thực hiện thao tác phân loại rác.

Các nhóm rác chính trong hệ thống gồm:

```text
Nhựa
Kim loại
Thủy tinh
Hữu cơ