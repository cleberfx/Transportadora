 package br.com.transportadora.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class CriaConexao {

    private String url = "jdbc:postgresql://localhost:5432/transportadora";
    private String username = "root";
    private String password = "1234";

    public Connection getConnection() {
        try {
            DriverManager.registerDriver(new org.postgresql.Driver());
            return DriverManager.getConnection(this.url, this.username, this.password);
        } catch (SQLException erro) {
            throw new RuntimeException(erro);
        }
    }
}

