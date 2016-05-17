import static org.junit.Assert.assertEquals;
import org.junit.Test;

public class RunTests {
  @Test
  public void testChapter3() {
    assertEquals(Chapter3.multiply6by9(), 54);
    assertEquals(Chapter3.exercise3_3(1, -2, -35, 7), 0);
    assertEquals(Chapter3.exercise3_4(1.0, -2.0, -35.0, 7.0), 0.0, 1e-15);
    assertEquals(Chapter3.exercise3_5(1, -2, -35, 7), 0);
  }
}
