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
  #pagebreak()

  == Итератор
  === Range based for
  Чтобы сократить перебор символов в какой-то одной коллекции, придумали такую структуру
  ```
  for(const char& c : arr) {
 
  }
  ```
  под капотом рабоатет она примерно так:
  ```
  {
    const char (&__range1)[10] = arr;
    const char* __begin1 = __range1;
    const char* __end1 = __range1 + 10L;
    for(; __begin1 != __end1; ++__begin1) {
      const char & c = *__begin1;
    }
  }
  ```

  #linebreak()
  #linebreak()
  ```
  std::array<int, 10> arr;
  arr.size();
  ```
  Это просто обертка над массивом. Он удобнее в чтении (в смысле кодстайла).\
  Есть методы ```cpp .fill(n)``` --- заполниь значениями `n`; ```cpp .size()```  --- узнать размер (он всегда фиксированный).

  #pagebreak()

  ```cpp
  class NodeIterator {
  public:
    NodeIterator& operator++() {};

    // ...
  
  }

  class List {
  public:
    List()_ {
      fake_ = new Node{0, nullptr, nullptr};
      fake_->next = fake_->prev;
      fake_->next = fake_;
    }

    void erase(Node* node) {
      node->prev->next = node->next;
      node->next->prev = node->prev;
      delete node;
    }

    void push_back(int value) {
      Node* next = new Node{value, nullptr, nullptr};
      next->prev = last_;
      next->next = nullptr;
      last_ = next;
    }
  private:
    Node* fake_;
  }
  ```

  // https://cppinsights.io/
  
  #pagebreak(weak: true)
  #doc
]

#show: page_settings
#show: lecture_9
