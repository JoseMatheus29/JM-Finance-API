# 💰 JmFinance API

🚀 API para gerenciamento financeiro, permitindo cadastro de usuários, transações, categorias e métodos de pagamento.

---

## 📌 Tecnologias Utilizadas
- **Java 17+**
- **Spring Boot 3.3**
- **Spring Data JPA**
- **Spring Web**
- **Spring Security** (Desativado por padrão)
- **MySQL**
- **Flyway (Migrations)**
- **Swagger (Documentação da API)**

---

## 📌 Pré-requisitos
Antes de rodar o projeto, certifique-se de ter instalado:
- **Java 17+**
- **Maven**
- **MySQL**
- **IntelliJ IDEA / VS Code**
  
---

## 📌 Modelo ER

![Modelo ER JMFINANCE](https://github.com/user-attachments/assets/5454125c-0355-40af-8fa8-f6312db7af75)

---

## 📌 Endpoints Principais

### **🔹 Usuários (`/users`)**
| Método  | Endpoint       | Descrição                  |
|---------|---------------|----------------------------|
| `GET`   | `/users`      | Retorna todos os usuários  |
| `GET`   | `/users/{id}` | Retorna um usuário pelo ID |
| `POST`  | `/users`      | Cria um novo usuário       |
| `DELETE`| `/users/{id}` | Remove um usuário         |

---

### **🔹 Categorias (`/categories`)**
| Método  | Endpoint         | Descrição                  |
|---------|-----------------|----------------------------|
| `GET`   | `/categories`   | Retorna todas as categorias |
| `POST`  | `/categories`   | Cria uma nova categoria     |

---

### **🔹 Métodos de Pagamento (`/payment-methods`)**
| Método  | Endpoint           | Descrição                        |
|---------|-------------------|--------------------------------|
| `GET`   | `/payment-methods` | Retorna todos os métodos de pagamento |
| `POST`  | `/payment-methods` | Cria um novo método de pagamento |

---

### **🔹 Transações (`/transactions`)**
| Método  | Endpoint                  | Descrição                              |
|---------|--------------------------|--------------------------------------|
| `GET`   | `/transactions`           | Retorna todas as transações          |
| `GET`   | `/transactions/user/{userId}` | Retorna as transações de um usuário |
| `POST`  | `/transactions`           | Cria uma nova transação              |


---

## 📌 Configuração do Banco de Dados

**Criar o banco de dados MySQL**
```sql
CREATE DATABASE jmfinance;
```

**Configurar as credenciais do banco**
No arquivo src/main/resources/application.properties, adicione:

spring.datasource.url=jdbc:mysql://localhost:3306/jmfinance
spring.datasource.username=root
spring.datasource.password=suasenha
spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver
spring.jpa.database-platform=org.hibernate.dialect.MySQL8Dialect
spring.jpa.hibernate.ddl-auto=update

🔹 Troque suasenha pela senha do seu MySQL.

**Rodar as migrations**
```mvn flyway:migrate```

## 📌 Passo a Passo para Rodar o Projeto

**Clonar o repositório**
``` git clone https://github.com/seu-usuario/jmfinance-api.git```
``` cd jmfinance-api```
**Instalar as dependências**
```mvn clean install```
**Rodar o projeto**
```mvn spring-boot:run```
**Acessar a API via Swagger**
http://localhost:8080/swagger-ui/index.html

 Autor
Desenvolvido  José Matheus✌  [Veja meu Linkedin](https://www.linkedin.com/in/josé-matheus-de-lima-27706a1b6/)

