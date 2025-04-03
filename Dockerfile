# ใช้ PHP 8.2 CLI image จาก Docker Hub
FROM php:8.2-cli

# ตั้ง working directory ใน container
WORKDIR /app

# คัดลอกทุกไฟล์จาก repo ไปใน container
COPY . /app

# เปิด PHP Built-in server ที่ Render ต้องการ
CMD ["php", "-S", "0.0.0.0:10000", "-t", "."]
