# Temel image
FROM python:3.9-slim

# Çalışma dizini ayarla
WORKDIR /app

# Gereksinimleri kopyala ve yükle
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Uygulama kodunu kopyala
COPY . .

# Bağlantı noktası aç
EXPOSE 5000

# Uygulamayı çalıştır
CMD ["python", "app.py"]