# loh_ecommerce_app

This is a mobile app with a user-friendly e-commerce product listing page. The app should allow users to search through products,apply filters (e.g., popularity, highest price, lowest price, customer review ), sort products based on different categories(bag, eyeglasses and shoes) and support pagination for smooth navigation through the product list.


## Prerequisites
- Flutter and dart SDK 
- VS code
- Android Emulator or Physical Device
- Basic knowledge of using a provider


## Dependencies
- provider: ^6.1.1
- get_it: ^7.6.4
- 
## Project Structure
lib/ <br>
|--core/ <br>
|-----enum/ <br>
|--------filter_criteria.dart <br>
|--------view_state.dart <br>
|-----locator/ <br>
|--------app_locator.dart <br>
|-----utils/ <br>
|--------app_images.dart <br>
|--feature/ <br>
|-----data/ <br>
|-------model/ <br>
|---------product_model.dart <br>
|-----presentation/ <br>
|-------controller/ <br>
|---------base_controller.dart <br>
|---------base_view.dart <br>
|---------home_controller.dart <br>
|-------pages/ <br>
|---------home_page.dart <br>
|-------widgets/ <r>
|--------chip_item.dart <br>>
|------- chip_view.dart <br>
|------- content_view.dart <br>
|------- filter_bottom_sheet.dart <br>
|------- filter_tile.dart <br>
|------- search_bar.dart <br>
|-- main.dart 

## Video Demonstration

https://github.com/mercyjae/loh_ecommerce_app/assets/83911888/91ec939e-f16c-47aa-a860-021862e7068a

