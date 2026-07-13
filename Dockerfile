FROM python:3.12.7-slim

ARG GIT_SHA=unknown
LABEL application_name="auth"
LABEL description="Authentication service for the pantalasa quotes application"
LABEL owner="dane@pantalasa.org"
LABEL source_uri="https://github.com/pantalasa/auth"
LABEL git_sha="${GIT_SHA}"

WORKDIR /app
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY src src
COPY quotes.txt ./

# Run as a non-root user
USER 1001

HEALTHCHECK --interval=30s --timeout=3s --retries=3 CMD exit 0

EXPOSE 80
CMD ["gunicorn", "-w", "4", "quote:app", "-b", "0.0.0.0:80", "--chdir", "src"]
