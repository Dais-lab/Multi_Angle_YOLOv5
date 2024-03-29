FROM pytorch/pytorch:1.12.1-cuda11.3-cudnn8-delvel
WORKDIR /app
RUN apt-get update && apt-get install -y \
    build-essential \
    libatlas-base-dev \
    git \
    tzdata \
    libgl1-mesa-glx \
    libcairo2-dev \
    pkg-config \
    python3-dev
ENV TZ Asia/Seoul
RUN pip3 install --upgrade pip
RUN pip3 install -r ./yolov5/requirements.txt
CMD ["python", "multi_angle_detect.py"]