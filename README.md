# DIO - jornada-devops-com-aws-impulso

## echo "IaC - criando infraestrutura com código..."

### echo "criando diretórios publico, adm, ven e sec..."

- mkdir publico adm ven sec

### echo "criando grupos GRP_ADM, GRP_VEN, GRP_SEC..."

- groupadd GRP_ADM
- groupadd GRP_VEN
- groupadd GRP_SEC

### echo "criando usuarios..."

- useradd carlos -c "Pertence ao grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd crypt carlos123) -G GRP_ADM
- useradd maria -c "Pertence ao grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd crypt maria123) -G GRP_ADM
- useradd jose -c "Pertence ao grupo GRP_ADM" -s /bin/bash -m -p $(openssl passwd crypt jose123) -G GRP_ADM

---

- useradd debora -c "Pertence ao grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd crypt debora123) -G GRP_VEN
- useradd sebastiana -c "Pertence ao grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd crypt sebastiana123) -G GRP_VEN
- useradd roberto -c "Pertence ao grupo GRP_VEN" -s /bin/bash -m -p $(openssl passwd crypt roberto123) -G GRP_VEN

---

- useradd josefina -c "Pertence ao grupo GRP_SEC" -s /bin/bash -m -p $(openssl passwd crypt josefina123) -G GRP_SEC
- useradd amanda -c "Pertence ao grupo GRP_SEC" -s /bin/bash -m -p $(openssl passwd crypt amanda123) -G GRP_SEC
- useradd rogerio -c "Pertence ao grupo GRP_SEC" -s /bin/bash -m -p $(openssl passwd crypt rogerio123) -G GRP_SEC

### echo "mudando permissoes do diretorios publico, adm, ven e sec..."

- chown root:GRP_ADM /adm
- chown root:GRP_SEC /sec
- chown root:GRP_VEN /ven

### echo "mudando a permissao dos diretorios adm, ven e sec..."

- chmod 700 /adm /ven /sec

### echo "mudando permissoes do diretorio public chmod 777..."

- chmod 777 /publico

### echo "Infra criada..."

### Docker

- $ curl -fsSL https://get.docker.com/ | sh
- sudo usermod -aG docker <your_username>
- docker run hello-world

### docker-compose

- sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
- sudo chmod +x /usr/local/bin/docker-compose
- docker-compose --version
