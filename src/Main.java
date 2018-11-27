import org.antlr.v4.runtime.*;

import java.io.File;

public class Main {
    public static void main(String[] args) throws Exception {
        Lexer l = new FibonacciLexer(CharStreams.fromFileName("res/fibo.language"));
        //Lexer l = new FourLexer(CharStreams.fromString("10.5E+1 =="));
        Token t = l.nextToken();
        while (t.getType() != Token.EOF) {
            System.out.println(t);
            t = l.nextToken();
        }
    }
}


