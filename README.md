# photo-metadata 

## Extração de metadados de arquivos de imagens  

<br/> 

### 1. Construção da imagem do contêiner, via CLI (command-line interface):  

<br/> 

    docker-compose build

### 2. Execução do contêiner, via CLI: 

<br/> 

    docker-compose up  
 
<br/> 
 

> A porta sugerida é 8888, mas pode ser qualquer porta disponível. Para utilizar outra porta, basta editar o arquivo `docker-compose.yaml` e alterar essa informação.  

<br />

### 3. Alternativamente, pode-se utilizar Docker Desktop em vez da CLI.

<br />  

### 4. Como aqui a finalidade do Docker é apenas garantir um ambiente pronto para utilização, pode-se usar o notebook diretamente sem rodar o contêiner. Para isso, deve-se preparar o ambiente manualmente, instalando o python (3.8), os pacotes necessários, indicados no arquivo `requirements.txt`.

<br/> 

### 5. Se a porta escolhida for a `8888`, o notebook pode ser utilizado a partir da url: http://localhost:8888

