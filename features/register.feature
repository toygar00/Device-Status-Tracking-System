Feature: Uye ol

  Scenario: Basarisiz Kayit ol
    Given kullanici web sitesini ziyaret eder
    When uye ol sayfasina gider
    Then butona tiklar
    And Uyarı mesajini gorur


  Scenario: Basarili Kayit ol
    Given kullanici web sitesini ziyaret eder
    When uye ol sayfasina gider
    Then Textleri doldurur butona tiklar
    Then Basari mesajini gorur
