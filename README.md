# TODO APP #
## 1. Structure - Clean architecture ##
    lib
        domain
            entities
            repositories
            usecases
        data
            mapper
            models
            repositories
        presentation
## 2. Function ##
	Home show toCall, toBuy and toSell
	Detail show list
## 3. Running app & unit test ##
    First of all, run "flutter packages pub run build_runner build" for generation todo_model.g.dart and .mock file
## 4. Tech ##
    State management: GetX
    Database: Hive
