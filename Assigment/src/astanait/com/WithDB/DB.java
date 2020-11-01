package astanait.com.WithDB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import astanait.com.Classes.User;
import astanait.com.Classes.Book;

public class DB {
	 public Connection getConnection()
	    {
	    	
	        Context initialContext = null;
	        Connection connection = null;
	        try
	        {
	            initialContext = new InitialContext();
	            Context envCtx = (Context)initialContext.lookup("java:comp/env");
	            DataSource ds = (DataSource)envCtx.lookup("jdbc/connection");
	            connection = ds.getConnection();
	        }
	        catch (NamingException | SQLException e)
	        {
	            e.printStackTrace();
	        }
	        return connection;
	    }

	public void create(long id, String fname, String lname, String username, String password, String email) {
		Connection connection = null;
        PreparedStatement preparedStatement = null;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO `users`(`id`, `fname`, `lname`, `username`, `password`, `email`) VALUES (?, ?, ?, ?, ?, ?)");
            preparedStatement.setLong(1, id);
            preparedStatement.setString(2, fname);
            preparedStatement.setString(3, lname);
            preparedStatement.setString(4, username);
            preparedStatement.setString(5, password);
            preparedStatement.setString(6, email);
            preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
    }
	
	 public ArrayList<User> read(Connection connection)
	    {
	        ArrayList<User> userList = new ArrayList<User>();

	        try
	        {
	        	connection = getConnection();
	            Statement statement = connection.createStatement();
	            ResultSet resultSet = statement.executeQuery("SELECT * FROM users");
	            ResultSetMetaData metaData = resultSet.getMetaData();
	            int numberOfColumns = metaData.getColumnCount();
	            User user;
	            while (resultSet.next())
	            {
	                String[] userFields = new String[numberOfColumns];
	                for(int a=1; a<=numberOfColumns; a++)
	                {
	                    userFields[a-1] = resultSet.getObject(a).toString();
	                }
	                user = new User(userFields);
	                userList.add(user);
	            }
	            resultSet.close();
	            connection.close();
	            statement.close();
	        }
	        catch (SQLException sqlException)
	        {
	            sqlException.printStackTrace();
	        }
	        return userList;
	    }

	public ArrayList<Book> readBook(Connection connection) {
		ArrayList<Book> bookList = new ArrayList<Book>();

        try
        {
        	connection = getConnection();
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT * FROM books");
            ResultSetMetaData metaData = resultSet.getMetaData();
            int numberOfColumns = metaData.getColumnCount();
            Book book;
            while (resultSet.next())
            {
                String[] bookFields = new String[numberOfColumns];
                for(int a=1; a<=numberOfColumns; a++)
                {
                    bookFields[a-1] = resultSet.getObject(a).toString();
                }
                book = new Book(bookFields);
                bookList.add(book);
            }
            resultSet.close();
            connection.close();
            statement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return bookList;	}

	public void create(String isbn, String name, String author, String image) {
		Connection connection = null;
        PreparedStatement preparedStatement = null;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("INSERT INTO `books`(`isbn`, `name`, `author`, `image`) VALUES (?, ?, ?, ?)");
            preparedStatement.setString(1, isbn);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, author);
            preparedStatement.setString(4, image);
            preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
	}
	
	protected int update(String isbn, String name, String author, String image) {
		Connection connection = null;
        PreparedStatement preparedStatement = null;
        int updated = 0;
        try
        {
            connection = getConnection();
            preparedStatement = connection.prepareStatement("update books set book_name=?, book_author=?,  book_image=? where book_ISBN=?");
            preparedStatement.setString(1, isbn);
            preparedStatement.setString(2, name);
            preparedStatement.setString(3, author);
            preparedStatement.setString(4, image);
            updated = preparedStatement.executeUpdate();
            connection.close();
            preparedStatement.close();
        }
        catch (SQLException sqlException)
        {
            sqlException.printStackTrace();
        }
        return updated;
	}
}
