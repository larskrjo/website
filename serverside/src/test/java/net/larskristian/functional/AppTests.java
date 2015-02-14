package net.larskristian.functional;

import net.larskristian.controller.MyWebController;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.ExtendedModelMap;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:application-context.xml")
@ActiveProfiles(profiles = "test")
public class AppTests {

    @Autowired
    protected MyWebController controller;

    @Before
    public void setUp() {}

    @After
    public void tearDown() {}

    @Test
    public void testPrintWelcome() throws Exception {
        controller.printWelcome("lars", new ExtendedModelMap());
    }
}
