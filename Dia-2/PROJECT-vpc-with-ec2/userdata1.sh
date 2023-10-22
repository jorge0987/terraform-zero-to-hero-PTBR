#!/bin/bash
apt update
apt install -y apache2

# Obtenha o ID da instância usando os metadados da instância
INSTANCE_ID=$(curl -s http://169.254.169.254/latest/meta-data/instance-id)

#Instale a CLI da AWS
apt install -y awscli

# Baixe as imagens do bucket S3
#aws s3 cp s3://myterraformprojectbucket2023/project.webp /var/www/html/project.png --acl public-read

# Crie um arquivo HTML simples com o conteúdo do portfólio e exiba as imagens
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
  <title>My Portfolio</title>
  <style>
    /* Add animation and styling for the text */
    @keyframes colorChange {
      0% { color: red; }
      50% { color: green; }
      100% { color: blue; }
    }
    h1 {
      animation: colorChange 2s infinite;
    }
  </style>
</head>
<body>
  <h1>Terraform Project Server 1</h1>
  <h2>Instance ID: <span style="color:green">$INSTANCE_ID</span></h2>
  <p>Welcome to CloudChamp's Channel</p>
  
</body>
</html>
EOF

#Inicie o Apache e habilite-o na inicialização
systemctl start apache2
systemctl enable apache2