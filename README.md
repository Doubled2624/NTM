# ♻️ Hệ thống phân loại rác tự động · YOLOv8 + Webcam Laptop + Cần gạt IoT

<h2 align="center">
    <a href="https://dainam.edu.vn/vi/khoa-cong-nghe-thong-tin">
    🎓 Faculty of Information Technology - DaiNam University
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
[![OpenCV](https://img.shields.io/badge/OpenCV-Computer%20Vision-green?style=for-the-badge&logo=opencv)](https://opencv.org)
[![Arduino](https://img.shields.io/badge/Arduino-Uno-teal?style=for-the-badge&logo=arduino)](https://www.arduino.cc)

</div>

---

# Smart Waste Sorter ♻️🤖

**Smart Waste Sorter** là hệ thống phân loại rác tự động sử dụng **trí tuệ nhân tạo**, **webcam laptop**, **YOLOv8**, **dashboard thống kê** và **cơ cấu cần gạt IoT dùng Servo SG90**.

Hệ thống có nhiệm vụ nhận diện vật thể rác thông qua hình ảnh từ webcam, phân loại rác thành các nhóm cơ bản, hiển thị kết quả trên giao diện web và điều khiển cần gạt đưa rác về đúng ngăn chứa tương ứng.

> Đề tài tập trung vào mô hình phân loại rác quy mô nhỏ, phù hợp với đồ án học tập, dễ lắp ráp, dễ kiểm thử và dễ trình bày.

---

## 👤 Thông tin sinh viên

| Thông tin | Nội dung |
|---|---|
| Họ tên | Bùi Tuấn Dương |
| Mã sinh viên | 1671020071 |
| Lớp | CNTT 16-03 |
| Khoa | Công nghệ thông tin |
| Trường | Đại học Đại Nam |
| Địa điểm | Hà Nội, Việt Nam |
| Email | buibanh2k4@gmail.com |

---

## 📌 Tóm tắt đề tài

Đề tài xây dựng một hệ thống phân loại rác tự động dựa trên **AI**, **camera** và **IoT**. Webcam laptop được sử dụng để thu nhận hình ảnh vật thể rác trong vùng nhận diện. Hình ảnh sau đó được đưa vào mô hình **YOLOv8** để nhận diện và phân loại rác.

Sau khi hệ thống xác định được loại rác, kết quả sẽ được hiển thị trên dashboard gồm:

- Loại rác vừa nhận diện.
- Độ tin cậy của mô hình.
- Tổng số lượng rác đã phân loại.
- Số lượng từng loại rác.
- Gợi ý xử lý phù hợp.
- Trạng thái cần gạt IoT.

Phần IoT sử dụng **Arduino Uno** và **Servo SG90** để điều khiển cần gạt. Khi AI nhận diện được loại rác, chương trình Python gửi lệnh qua cổng USB Serial tới Arduino. Arduino điều khiển servo quay đến góc tương ứng để gạt rác, sau đó servo quay về vị trí ban đầu để chờ vật phẩm tiếp theo.

---

## 🚫 Phạm vi không thực hiện

Hệ thống này **không** tập trung vào các nội dung ngoài phạm vi bài toán phân loại rác.

Cụ thể:

- Không sử dụng Blockchain.
- Không sử dụng MetaMask.
- Không sử dụng băng chuyền.
- Không xử lý dữ liệu giao thông.
- Không nhận diện biển số xe.
- Không ước lượng tốc độ xe.
- Không dùng mô hình robot phức tạp.
- Không dùng hệ thống cơ khí công nghiệp.
- Chỉ tập trung vào phân loại rác tự động bằng webcam, YOLOv8 và cần gạt servo.

---

## 🎯 Mục tiêu đề tài

Mục tiêu chính của đề tài là xây dựng một hệ thống phân loại rác tự động có khả năng:

- Nhận hình ảnh rác từ webcam laptop.
- Sử dụng YOLOv8 để nhận diện loại rác.
- Phân loại rác thành bốn nhóm chính.
- Hiển thị kết quả nhận diện trên dashboard.
- Thống kê số lượng từng loại rác.
- Đưa ra đề xuất xử lý cho từng loại rác.
- Gửi lệnh điều khiển tới Arduino Uno.
- Điều khiển Servo SG90 gạt rác vào đúng ngăn chứa.
- Servo tự quay về vị trí ban đầu sau khi gạt xong.
- Đảm bảo hệ thống đơn giản, dễ triển khai và phù hợp với đồ án sinh viên.

---

## 🗂️ Các nhóm rác trong hệ thống

Hệ thống tập trung vào bốn nhóm rác chính:

| STT | Nhóm rác | Tên class gợi ý | Ví dụ |
|---:|---|---|---|
| 1 | Nhựa | `plastic` | Chai nhựa, hộp nhựa, túi nhựa |
| 2 | Kim loại | `metal` | Lon nước, hộp kim loại |
| 3 | Thủy tinh | `glass` | Chai thủy tinh, lọ thủy tinh |
| 4 | Hữu cơ | `organic` | Vỏ trái cây, lá cây, thức ăn thừa |

---

## 🧠 Công nghệ sử dụng

| Thành phần | Công nghệ |
|---|---|
| Ngôn ngữ chính | Python |
| Nhận diện vật thể | YOLOv8 |
| Xử lý ảnh/video | OpenCV |
| Camera đầu vào | Webcam laptop |
| Giao diện | Web Dashboard |
| Vi điều khiển | Arduino Uno |
| Cơ cấu chấp hành | Servo SG90 |
| Giao tiếp AI - Arduino | USB Serial |
| Dataset | Ảnh rác đã gắn nhãn YOLO |
| Thống kê | Python |
| Điều khiển servo | Arduino C/C++ |

---

## 📁 Cấu trúc dự án đề xuất

```text
smart-waste-sorter/
│
├── main.py                          # File chạy chính hệ thống AI
├── web_app.py                       # Backend web/dashboard nếu có
├── requirements.txt                 # Danh sách thư viện Python
├── README.md                        # Tài liệu dự án
│
├── models/
│   └── best.pt                      # Model YOLOv8 đã huấn luyện
│
├── src/
│   ├── detector.py                  # Xử lý nhận diện rác bằng YOLOv8
│   ├── camera.py                    # Đọc hình ảnh từ webcam laptop
│   ├── waste_counter.py             # Thống kê số lượng từng loại rác
│   ├── servo_controller.py          # Logic điều khiển servo/cần gạt
│   ├── suggestions.py               # Gợi ý xử lý rác
│   └── utils.py                     # Các hàm tiện ích
│
├── arduino_gate.py                  # Python gửi lệnh Serial tới Arduino Uno
│
├── arduino_servo_gate/
│   └── arduino_servo_gate.ino       # Code Arduino Uno điều khiển Servo SG90
│
├── static/
│   ├── index.html                   # Giao diện dashboard
│   ├── style.css                    # Giao diện CSS
│   └── script.js                    # Xử lý frontend
│
├── docs/
│   ├── aiotlab_logo.png
│   ├── fitdnu_logo.png
│   ├── dnu_logo.png
│   └── project photo/
│       ├── 1.png
│       ├── 2.png
│       ├── 3.png
│       ├── 4.png
│       ├── 5.png
│       ├── 6.png
│       ├── 7.png
│       └── 8.png
│
└── datasets/
    ├── train/
    ├── valid/
    ├── test/
    └── data.yaml