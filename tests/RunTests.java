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
        assertEquals(Chapter3.exercise3_6_num_of_ones_binary(1), 1);
        assertEquals(Chapter3.exercise3_6_num_of_ones_binary(2), 1);
        assertEquals(Chapter3.exercise3_6_num_of_ones_binary(4), 1);
        assertEquals(Chapter3.exercise3_6_num_of_ones_binary(3), 2);
        assertEquals(Chapter3.exercise3_6_num_of_ones_binary(2147483647), 31);
    }

    @Test
    public void testChapter3_7_barrel_shift_right() {
        // 0000 0000 0000 0000 0000 0000 0000 0010
        // 0000 0000 0000 0000 0000 0000 0000 0001
        assertEquals(Chapter3.exercise3_7_barrel_shift_right(2), 1);
        // 0000 0000 0000 0000 0000 0000 0000 0001
        // 1000 0000 0000 0000 0000 0000 0000 0000
        assertEquals(Chapter3.exercise3_7_barrel_shift_right(1), -2147483648);
        // 0000 0000 0000 0000 0000 0000 0000 0011
        // 1000 0000 0000 0000 0000 0000 0000 0001
        assertEquals(Chapter3.exercise3_7_barrel_shift_right(3), -2147483647);
    }

    // TODO Fix implementation
    // @Test
    // public void testChapter3_7_barrel_shift_left() {
    //     // 1000 0000 0000 0000 0000 0000 0000 0000
    //     // 0000 0000 0000 0000 0000 0000 0000 0001
    //     assertEquals(Chapter3.exercise3_7_barrel_shift_left(-1), 3);
    // }

    @Test
    public void testChapter3_9_stack_manip() {
        // Just needs to run to compile to validate that
        // the .limit settings were correct in the Chapter.j source.
        Object o = new Object();
        assertEquals(Chapter3.exercise3_9_stack_manip(o, o, o, o, o, o, o, o, o, 42), 419958);
    }

    @Test
    public void testChapter4_1_dinosaur() {
        System.out.println("\nTesting Dinosaur constructors.");
        Dinosaur d = new Dinosaur();
        assertEquals(d._name, null);
        assertEquals(d._isCarnivore, false);
        Dinosaur d2 = new Dinosaur("Larry");
        assertEquals(d2._name, "Larry");
        assertEquals(d2._isCarnivore, false);
        Dinosaur d3 = new Dinosaur("Rex", true);
        assertEquals(d3._name, "Rex");
        assertEquals(d3._isCarnivore, true);
    }

    @Test
    public void testChapter4_2_velociraptor() {
        System.out.println("\nTesting Velociraptors");
        Velociraptor v = new Velociraptor("Sam");
        assertEquals(v._name, "Sam");
        assertEquals(v._isCarnivore, true);
    }
}
