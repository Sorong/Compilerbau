import org.antlr.v4.runtime.*;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

public class TestFour {

    @Test
    public void TestInput() {
        Lexer l = new FourLexer(CharStreams.fromString("else"));

    }

}
