# Use a imagem oficial do Python como base
FROM python:3.9
# Crie e defina o diretório de trabalho
WORKDIR /saldanha/src/app
#copie o arquivo de requisitos para o diretório de trabalho
COPY requirements.txt ./
 #instale as Dependências
RUN pip install --no-cache-dir -r requirements.txt
# Copie o código-fonte da aplicação para o diretório de trabalho
COPY . .
#exponha a porta 5000 para que a aplicação possa ser acessada externamente
EXPOSE 5000
# Comando para inicar a aplicação
CMD ["python", "app.py"]