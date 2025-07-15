FROM registry.redhat.io/ubi9/python-311:9.6

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY jenkins_mcp_server.py ./

CMD ["python", "jenkins_mcp_server.py"]
