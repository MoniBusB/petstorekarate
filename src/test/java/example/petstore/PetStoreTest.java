package example.petstore;

import com.intuit.karate.junit5.Karate;

class PetStoreTest {
    @Karate.Test
    Karate testPetStore() {
        return Karate.run("classpath:example/petstore/petstore.feature").relativeTo(getClass());
    }
}
