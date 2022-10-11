import com.revature.testing.Calculator;
import org.junit.*;

public class CalculatorTest {
    //Below here we'll introduce methods to begin testing our object

    //To test our calculator we are going to need a testing object
    static Calculator calc;

    //Right now this value is null, we could directly instantiate it but we are going to use dependency injection to
    //handle this

    //What I am going to do to create a new calc object is use a before class annotation to create the calc object
    //before any of the test methods are run
    //TO run something before the entire class I'll use the @beforeclass annotation

    @BeforeClass
    public static void setupBeforeClass() {
        System.out.println("This runs before the entire class but only once");
        calc = new Calculator();
    }

    @Before
    public void beforeEach() {
        System.out.println("This runs before each test");
    }

    @After
    public void afterEach() {
        System.out.println("This runs after each test");
    }

    @AfterClass
    public static void afterCLass() {
        System.out.println("This runs once but after everything!");
    }

    //Let's create some test classes

    //This is a positive test which means we should be checking for the right solutions
    @Test
    public void positiveAdditionTest() {
        //expected and actual output
        Assert.assertEquals(4, calc.addNumber(2, 2));
    }

    //We'll also create a neagtive addition test to verify we're not getting the wrong output

    @Test
    public void negativeAdditionTest(){
        Assert.assertNotEquals(7, calc.addNumber(2, 3));
    }

    Calculator.ExpenseApprover ea = new Calculator.ExpenseApprover();

    @Test
    public void testExpense() {
        Expense exp = new Expense();
        exp.setAmount(105);
        exp.setReceipt(true);
        Assert.assertFalse(ea.approveOrDenyExpense(exp));
    }
}
