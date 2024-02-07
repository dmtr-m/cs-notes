#import "../../templates/notes_template.typ": page_settings

#let lecture_9(doc) = [
  = Лекция 9.
  == Контейнеры.
  === Векторы.
  Контейнер, поддерживающий свойства массива, с возможностю вставки в конец и изменением размеров.
  ```cpp
  // #include <vector>

  std::vector<int> vec1;
  vec1.push_back(123);
  vec.resize(10);
  vec[2] = 2;
  ```
  Есть методы ```cpp .size()```, ```cpp .enc()```, ```cpp .begin()```, 

  Можем написать свой
  ```cpp
  class VectorInt {
  public:
    VectorInt() {

    }
    ~VectorInt() {
      delete[] begin_;
    }

    size_t size() const {
      return size_;
    }

    int operator[](size_t idx) const {
      return begin_[idx];
    }

  private:
    int* begin_ = nullptr;
    size_t size_ = 0;
  }
  ```
  #pagebreak(weak: true)
  #doc
]

#show: page_settings
#show: lecture_9
