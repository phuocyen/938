# Sử dụng một image cơ bản của OpenJDK
FROM openjdk:11-jre-slim

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép file JAR của ứng dụng vào thư mục làm việc
COPY onePlusOne.java /938/onePlusOne.java

# Expose cổng mà ứng dụng Java sử dụng (ví dụ, cổng 8080)
EXPOSE 8080

# Lệnh để chạy ứng dụng Java
CMD ["java", "-jar", "/938/onePlusOne.java"]
