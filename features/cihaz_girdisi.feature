Feature: Ariza kaydi ekle
  Musteri olarak
  Arizali cihazimin girisini yapabilmeliyim

  Scenario: Ariza ekle
    Given I am at http://localhost:3000

    When I select Üye Ol link
    And I enter ysninanysn90@gmail.com into the Username bar
    And I enter takimtay into the Password bar
    When I hit Sign In

    When I select Arıza bildirimi(Müşteri) link

    And I enter Yasin inan into the isim bar
    And I enter 12345678901 into the tel bar
    And I enter Asus into the marka bar
    And I enter Vivobook into the model bar
    And I enter Dustu into the problem bar
    When I hit Gonder
    Then I will be presented a page of result including Notebook Tedavi Merkezini Tercih ettiğiniz için teşekkürler.