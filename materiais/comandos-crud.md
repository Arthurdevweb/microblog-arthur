# Comandos SQL para operações de dados (CRUD)

## Resumo 

- C: CREATE (INSERT) -> usado para inserir dados 
- R: READ (SELECT) -> usado para ler/consultar dados
- U: UPDATE (UPDATE) -> usado para atualizar dados
- D: DELETE (DELETE) -> usado para excluir dados

## Exemplos

### INSERT na tabela de usuários

```sql
 INSERT INTO usuarios (nome, email, senha, tipo) 
 VALUES(
    'Arthur Augusto T. Arruda',
    'arthuraugusto176@gmail.com',
    'palmeiras123',
    'admin'
 );
 ```

```sql
 INSERT INTO usuarios(nome, email, senha, tipo)
 VALUES(
    'Fulano da Silva',
    'fulano@gmail.com',
    '456',
    'editor'
 ),
 
  (
    'Beltrano Soares',
    'beltrano@msn.com',
    '000penha',
    'admin'
  ),
  

    (
    'Chapolin Colorado',
    'chapolin@vingadores.com.br',
    'marreta',
    'editor'
   );
```


### SELECT na tabela de usuários

```sql
SELECT * FROM usuarios;

SELECT nome, email FROM usuarios;

SELECT nome, email FROM usuarios WHERE tipo = 'admin';
```


### UPDATE em dados na tabela de usuários

```sql
UPDATE usuarios SET tipo = 'admin' WHERE id = 4;

-- Obs: NUNCA ESQUEÇA DE PASSAR UMA CONDIÇÃO PARA O UPDATE!
```

### DELETE em dados de tabela de usuarios
```sql
DELETE FROM usuarios WHERE id = 2;

-- Obs: NUNCA ESQUECA DE PASSAR UMA CONDIÇÃO PARA O DELETE!
```


### INSERT na tabela de noticias 
```sql
INSERT INTO noticias(titulo, texto, resumo, imagem, usuario_id)
VALUES(
    'Descoberto oxigênio em Vênus',
    'Recentemente a sonda XYZ encontrou traços de oxigênio no planeta',
    'Nesta manhã do dia tal, foi feita uma das maiores descobertas feita pelo ser humano',
    'venus.jpg',
    1
);
```

```sql
INSERT INTO noticias(titulo, texto, resumo, imagem, usuario_id)
VALUES(
    'Nova versão do VScode',
    'Recentemente o VScode foi atualizado...',
    'A microsoft trouxe recursos de inteligência artificial',
    'vscode.jpg',
    4
    
);
```

```sql
INSERT INTO noticias(titulo, texto, resumo, imagem, usuario_id)
VALUES(
    'Onda de calor no Brasil',
    'Temperaturas muito acima da média',
    'Efeitos do aquecimento global estão prejudicando a vida...',
    'sol.jpg',
    1
    
);
```

### objetivo: consulta que mostre a data e o titulo da noticia e o nome do autor desta noticia.

#### SELECT COM JOIN (consulta com junção de tabelas)

```sql
SELECT 

-- Especificamos o nome da coluna junto com o nome da tabela SELECT

       noticias.data, 
       noticias.titulo, 
       usuarios.nome

-- Especificamos quais tabelas serão "juntadas/combinadas" FROM noticias JOIN usuarios
FROM noticias JOIN usuarios 


-- Fazemos uma comparação entre a chave estrangeira (FK)
-- com a chave primária (PK)

ON noticias.usuario_id = usuarios.id
```
