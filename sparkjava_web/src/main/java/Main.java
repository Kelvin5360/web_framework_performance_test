import static spark.Spark.*;

import java.util.Date;

public class Main {

  private static final String template = "Hello world! The time is %s";

  public static void main(String[] args) {
      get("/", (req, res) -> String.format(template, new Date().toString()));
  }
}
