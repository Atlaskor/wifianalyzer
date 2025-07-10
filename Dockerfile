FROM python:3.10-slim

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY wifi_survey_heatmap/ ./wifi_survey_heatmap/

CMD ["python", "-m", "wifi_survey_heatmap", "--help"]
