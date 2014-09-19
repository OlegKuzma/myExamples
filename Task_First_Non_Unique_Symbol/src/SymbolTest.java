import junit.framework.Assert;

import org.junit.Before;
import org.junit.Test;


public class SymbolTest {

    private Symbol symbol;
    
    @Before
    public void setUp() {
        symbol = new Symbol();
    }
    /*
    @Test
    public void testNormalBehavior() {
        Assert.assertEquals(symbol.foundFirstUniqueSymbols("aassdff"), (Character)'d');
    }
    */
    
    @Test
    public void testNormalBehavior() {
        Assert.assertEquals(symbol.foundFirstUniqueSymbols("aassdff").charValue(), 'd');
    }
    
    @Test(expected=IllegalArgumentException.class)
    public void testNotValid() {
        symbol.foundFirstUniqueSymbols("Aargh!");
    }
    
    @Test
    public void testNonUnique() {
        Assert.assertNull(symbol.foundFirstUniqueSymbols("aassddff"));
    }
}
