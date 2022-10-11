import com.revature.testing.PointComparison;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;

public class PointComparisonTest {
    static PointComparison pc;

    @BeforeClass
    public void testPointArrays() {
        int[] alicePoints = {89, 92, 93};
        int[] bobPoints = {91, 89, 90};
    }

    @Test
    public void compareFirstIndex() {
        System.out.println("Testing First Index Comparison");
        Assert.assertEquals(91, pc.);
    }

    @Test
    public void compareSecondIndex() {
        System.out.println("Testing method to compare second index");
        Assert.assertEquals(92, );
    }

    @Test
    public void negativeFirstIndex() {
        System.out.println("Testing Negative comparison");
        ex
    }

    @Test
    public void compareThirdIndex() {
        System.out.println("Testing method to compare third index");
        Assert.assertEquals(93);
    }

    @Test
    public void compareOverallPoints() {
        System.out.println("Checking to see who won");
        Assert.assertEquals("Alice");
    }
}
