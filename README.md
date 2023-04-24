# flight_booking

A new Flutter project.

## Setting folder for code new feature

Trong code chứa ba source chính là (Data, Domain, Presentations)


Data chứa dataource (data lưu local và data api), models, repository_impl( kế thừa abstraclass từ repository domain)


Đầu tiên nếu muốn code một feature tạo abstract class feature_repostory ở domain , class implement lại abstract class feature_repository_impl 
Trong những file này sẽ có nhiệm vụ chính là tương tác với api thông qua api_service được tạo ở trong datasource

Sau đó tạo file feature_usecase chúa repostory để handle ra đống data  trên đầu mỗi file chứa @injectable để file di.config.dart nó tự gen 
Riêng file feature_repository_impl.dart thì là @Injectable(as: feature_repostory) coi trong fie tao code để rõ hơn

Đặc biệt file này không được chứa data ở trong đó

tới phần bloc 
mỗi presentations sẽ đai diện cho một màn hình có chứa bloc and view folder 
bloc có feature_bloc chứa event và state data thì toàn bộ được lưu trong feature_model_state(trong này chỉ chúa các data toàn app không chúa data của riêng từng state) không được lưu data riêng lẻ như là int chatId 
feature_event với feature_state
Coi code tao để hiể kĩ hơn. Sau đó chay lệnh flutter pub run build_runner build để Gen ra file freezed cũng như file di.config.dart
Và nhớ là có @injectabe ở đầu

Code màu thì là Theme.of(context).color
Text Là Theme.of(context).textTheme.text

Còn text mới thì là bỏ vào trong file int10_..... thêm dòng "newText": "New Text" dùng S.of(context).newText để chạy
còn text có biến thì à "noProduct":"{no} Product" dùng S.of(context).noProduct(no) để gọi



