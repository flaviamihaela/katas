import java.lang.Math;

public class Fortune {
    FortuneMessage fortune;

    Fortune(FortuneMessage fortune) {
        this.fortune = fortune;
    }

    public void reveal() {
        System.out.println(fortune.getMessage());
    }

enum FortuneMessage {
    F0("Flattery will go far tonight."),
    F1("Don't behave with cold manners."),
    F2("May you someday be carbon neutral."),
    F3("You have rice in your teeth."),
    F4("A conclusion is simply the place where you got tired of thinking."),
    F5("No snowflake feels responsible in an avalanche."),
    F6("He who laughs last is laughing at you."),
    F7("If you look back, you'll soon be going that way."),
    F8("You will live long enough to open many fortune cookies."),
    F9("The fortune you seek is in another cookie.");

    private final String message;

    FortuneMessage(String message) {
        this.message = message;
    }

    public String getMessage() {
        return message;
    }

    public static FortuneMessage getRandomFortune() {
        int index = (int) (Math.random() * values().length);
        return values()[index];
    }
}

    public static void main(String[] args) {
        Fortune cookie = new Fortune(FortuneMessage.getRandomFortune());
        cookie.reveal();
    }
}
