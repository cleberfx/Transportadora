 package br.com.transportadora.encomenda;
 
 import br.com.transportadora.util.CriaConexao;
 import static java.lang.System.out;
 import java.sql.Connection;
 import java.sql.PreparedStatement;
 import java.sql.ResultSet;
 import java.sql.SQLException;
 import java.sql.Statement;
 import java.util.logging.Level;
 import java.util.logging.Logger;
 import javax.swing.JOptionPane;

 
public class EncomendaDAO {

    public final Connection connection;
    public ResultSet resultSet = null;
    Statement statement = null;

            
   public EncomendaDAO() { this.connection = new CriaConexao().getConnection(); }
   

 
   public void executaSQL(String SQL)
   {
     try
     {
      this.statement = this.connection.createStatement();
       this.resultSet = this.statement.executeQuery(SQL);
     }
     catch (SQLException SQLex) {
       JOptionPane.showMessageDialog(null, SQLex.getMessage());
     }
   }
   
 }


