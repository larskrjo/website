package net.larskristian.unit;

import static org.mockito.Mockito.*;
import static org.junit.Assert.*;

import net.larskristian.controller.MyWebController;
import net.larskristian.domain.User;
import net.larskristian.services.UserService;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.runners.MockitoJUnitRunner;
import org.springframework.ui.ExtendedModelMap;
import org.springframework.ui.Model;

/**
 * Created by Lars K. Johansen (larskrjo@gmail.com)
 */
@RunWith(MockitoJUnitRunner.class)
public class UnitTests {

    @Mock
    private UserService testServiceMock;

    @InjectMocks
    private MyWebController unit;

    @Before
    public void setUp() {
        User user = new User();
        user.setFirstName("testServiceValue");
        when(testServiceMock.getUser()).thenReturn(user);
    }

    @After
    public void tearDown() {}

    @Test
    public void testController() {

        Model modelMock = mockModel();

        unit.printWelcome("lars", modelMock);

        verify(testServiceMock, times(1)).getUser();
        assertTrue(modelMock.containsAttribute("message"));
    }

    private Model mockModel() {
        return new ExtendedModelMap();
    }
}
