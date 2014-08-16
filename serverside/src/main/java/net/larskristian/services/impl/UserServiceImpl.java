package net.larskristian.services.impl;

import net.larskristian.dao.UserDAO;
import net.larskristian.domain.User;
import net.larskristian.services.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Service;

/**
 * Created by lars.johansen on 15/08/14.
 */
@Service
public class UserServiceImpl implements UserService {

    private static final Logger LOG = LoggerFactory.getLogger(UserServiceImpl.class);

    @Autowired
    UserDAO userDAO;

    @Override
    public User getUser() {
        LOG.info("getUser()");
        return userDAO.getUser();
    }
}
