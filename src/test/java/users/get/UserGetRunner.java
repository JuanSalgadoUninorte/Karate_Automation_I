package users.get;

import com.intuit.karate.junit5.Karate;

public class UserGetRunner {
    @Karate.Test
    Karate userGet(){
        //No se coloca el .feature, porque Karate se lo pone automáticamente
        //return Karate.run("user-get").relativeTo(getClass());
        //como ejecutar míltiples features de un package desde un solo feature
        return Karate.run().relativeTo(getClass());
    }
}
