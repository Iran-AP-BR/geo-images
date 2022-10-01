# geo-images 

## Extração de coordenadas geográficas de arquivos de imagens  

<br/> 

### 1. Sugestão de construção da imagem do contêiner, via CLI:  

<br/> 

    docker build . -t geo-images

### 2. Sugestão de execução do contêiner, via CLI: 

<br/> 

    docker run -p8888:8888 -v <path-to-notebooks-directory>:/home/geo-images geo-images  
 
<br/> 
 

> A porta sugerida é 8888, mas pode ser qualquer porta disponível.  

<br />

> Alternativamente, pode-se utilizar Docker Desktop em vez da CLI.

<br />  

> Como aqui a finalidade do Docker é apenas garantir um ambiente pronto para utilização, pode-se usar o notebook diretamente sem rodar o contêiner. Para isso, deve-se preparar o ambiente manualmente.

<br/> 

### O notebook pode ser utilizado a partir da url: http://localhost:8888

