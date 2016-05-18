import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class RunTests {
    @Test
    public void testChapter3_3() {
        assertEquals(Chapter3.multiply6by9(), 54);
        assertEquals(Chapter3.exercise3_3(1, -2, -35, 7), 0);
    }

    @Test
    public void testChapter3_4() {
        assertEquals(Chapter3.exercise3_4(1.0, -2.0, -35.0, 7.0), 0.0, 1e-15);
    }

    @Test
    public void testChapter3_5() {
        assertEquals(Chapter3.exercise3_5(1, -2, -35, 7), 0);
    }

    @Test
    public void testChapter3_6() {
        assertEquals(Chapter3.exercise3_6(1), 1);
        assertEquals(Chapter3.exercise3_6(2), 1);
        assertEquals(Chapter3.exercise3_6(4), 1);
        assertEquals(Chapter3.exercise3_6(3), 2);
        assertEquals(Chapter3.exercise3_6(2147483647), 31);
    }
}
