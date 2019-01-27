class CarHandler {
  ArrayList<Car> cars;

  CarHandler(int numCars) {
    cars = new ArrayList<Car>(numCars);
  }

  void update() {
    ArrayList<Car> flagged = new ArrayList<Car>();
    for (Car c : cars) {
      c.move();
      if (c.flagged)
        flagged.add(c);
      c.display();
    }
    cars.removeAll(flagged);
  }
}
