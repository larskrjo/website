package net.larskristian.dao.impl;

import net.larskristian.dao.UserDAO;
import net.larskristian.domain.User;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by lars.johansen on 13/08/14.
 */
@Repository
public class UserDAOImpl implements UserDAO {

    private static final Logger LOG = LoggerFactory.getLogger(UserDAOImpl.class);

    @Resource(name = "larskristianDS")
    private DataSource dataSource;

    @Override
    public User getUser() {
        LOG.info("getUser()");
        String query = "SELECT * FROM users";
        User user = new User();

        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        try{
            con = dataSource.getConnection();
            ps = con.prepareStatement(query);
            rs = ps.executeQuery();
            if(rs.next()){
                user.setFirstName(rs.getString("first_name"));
                user.setLastName(rs.getString("last_name"));
                user.setAge(rs.getInt("age"));
            }
        }
        catch(SQLException e){
            throw new RuntimeException();
        }
        finally{
            try {
                rs.close();
                ps.close();
                con.close();
            } catch (SQLException e) {}
        }
        return user;
    }
}
