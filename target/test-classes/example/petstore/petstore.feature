Feature: PetStore API tests

Background:
    * url 'https://petstore.swagger.io/v2/'

Scenario: Crear un usuario
    Given path 'user/createWithList'
    And request [{ "id": 0, "username": "monib", "firstName": "Monica", "lastName": "Bustamante", "email": "mbus20231023@gmail.com", "password": "0987", "phone": "0968643225", "userStatus": 1 }]
    When method post
    Then status 200
    And match response.message == 'ok'

Scenario: Buscar el usuario creado
    Given path 'user/monib'
    * configure retry = { count: 5, interval: 1000 }  # Se configura reintento debido que la página no envía respuesta a la primera petición
    When method get
    Then status 200 
    And match response.username == 'monib'

Scenario: Actualizar el nombre y el correo del usuario
    Given path 'user/monib'
    And request { "id": 0, "username": "monib", "firstName": "Alexandra", "lastName":Bustamante", "email": "monicabustamante.2191@gmail.com", "password": "0987", "phone": "0968643225", "userStatus": 1 }
    When method put
    Then status 200
    And match response.code == 200

Scenario: Buscar el usuario actualizado
    Given path 'user/monib'
    * configure retry = { count: 5, interval: 1000 }  # Configura el reintento
    When method get
    Then status 200
    And match response.username == 'monib'

Scenario: Eliminar el usuario
    Given path 'user/monib'
    When method delete
    Then status 200
    And match response.code == 200