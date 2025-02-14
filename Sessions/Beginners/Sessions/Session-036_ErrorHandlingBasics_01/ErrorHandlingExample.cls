// Example to illustrate unhandled vs handled errors
public class ErrorHandlingExample {

    public static void unhandledErrorDemo() {
        // This will cause an unhandled exception
        Integer num = 5 / 0; // Division by zero
    }

    public static void handledErrorDemo() {
        try {
            Integer num = 5 / 0; // Division by zero
        } catch (Exception e) {
            System.debug('Handled Error: ' + e.getMessage());
        }
    }
}