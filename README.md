# loh_ecommerce_app

This is a mobile app with a user-friendly e-commerce product listing page using Flutter. The app should allow users to browse through products,apply filters (e.g., popularity, ), sort products based on different criteria, and support pagination for smooth navigation through the product catalog. 


## Prerequisites
- Flutter and dart SDK 
- VS code
- Android Emulator or Physical Device
- Basic knowledge of using a provider


## DEPENDENCIES
- provider: ^6.1.1
- get_it: ^7.6.4
## PROJECT STRUCTURE
lib/ <br>
|-- main.dart <br>
|-- core/ <br>
|      |--enum/ <br>
|          |-- filter_criteria.dart <br>
|          |-- view_state.dart <br>
|      |--locator/ <br>
|          |-- app_locator.dart <br>
|      |--utils/ <br>
|          |-- app_images.dart <br>
|-- feature/ <br>
|   |--data/ <br>
|      |--model/ <br>
|         |-- product_model.dart <br>
|-- utils/ <br>
|   |-- softKey_focus.dart <br>
|   |-- app_image.dart <br>
|-- views/components <br>
|   |-- route_error_page.dart <br>
|   |-- search_bar.dart <br>
|   |-- tab_chip_view.dart <br>
|   |-- tab_content_view.dart <br>
|   |-- text_field.dart <br>
|-- view_model/ <br>
|   |-- app_view_model.dart <br>
|   |-- base_view.dart <br>
|   |-- base_view_model.dart <br>
|-- chip_item.dart <br>
|-- filter_bottom_sheet.dart <br>
|-- filter_item.dart <br>
|-- main.dart 



