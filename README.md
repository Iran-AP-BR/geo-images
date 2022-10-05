# photo-metadata 

## Extração de metadados de arquivos de imagens  

<br/> 

### 1. Sugestão de construção da imagem do contêiner, via CLI:  

<br/> 

    docker build . -t photo-metadata

### 2. Sugestão de execução do contêiner, via CLI: 

<br/> 

    docker run -p<porta>:8888 -v <path-to-notebooks-directory>:/home/photo-metadata photo-metadata  
 
<br/> 
 

> A porta sugerida é 8888, mas pode ser qualquer porta disponível.  

<br />

### 3. Alternativamente, pode-se utilizar Docker Desktop em vez da CLI.

<br />  

### 4. Como aqui a finalidade do Docker é apenas garantir um ambiente pronto para utilização, pode-se usar o notebook diretamente sem rodar o contêiner. Para isso, deve-se preparar o ambiente manualmente, instalando o python, o jupyter e os demias pacotes necessários.

<br/> 

### 5. O notebook pode ser utilizado a partir da url: http://localhost:8888

