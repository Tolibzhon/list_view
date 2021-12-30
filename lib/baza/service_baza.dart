class ServiceBaza {
  String icon;
  String reachtext;
  String smalltext;
  ServiceBaza(this.icon, this.reachtext, this.smalltext);
}

class ListServiceBaza {
  List<ServiceBaza> baza = [
    ServiceBaza(
        "assets/images/1.png", "Телефоны служб", "Попали в трудную ситуацию?"),
    ServiceBaza("assets/images/2.png", "Маршруты прогулок",
        "Тематически провести день?"),
    ServiceBaza(
        "assets/images/3.png", "Выучите язык", "Легко общаться с жителями?"),
    ServiceBaza("assets/images/4.png", "Поездка по городам",
        "Хотите больше увидеть в России?"),
    ServiceBaza(
        "assets/images/5.png", "Музеи города", "Нравится духовно развиваться?"),
  ];
}

class ListServiceBaza2 {
  List<ServiceBaza> baza = [
    ServiceBaza("assets/images/medicine.png", "Единный телефоны служб", ""),
    ServiceBaza("assets/images/medicine.png", "Единный телефоны служб", ""),
  ];
}
