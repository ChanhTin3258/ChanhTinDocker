# Sử dụng image Node.js Alpine (nhẹ hơn) làm base image
FROM node:18-alpine

# Thiết lập thư mục làm việc trong container
WORKDIR /usr/src/app

# Sao chép file package.json và package-lock.json vào thư mục làm việc
COPY package*.json ./

# Cài đặt các phụ thuộc (dependencies)
RUN npm install

# Sao chép toàn bộ mã nguồn vào thư mục làm việc
COPY . .

# Mở cổng 3000 để truy cập ứng dụng
EXPOSE 3000

# Lệnh khởi chạy ứng dụng
CMD [ "npm", "start" ]
