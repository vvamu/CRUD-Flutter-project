class IRepository<T> {


  T getOne(T id){ return id;}
  //List<T> getAll {}
  set insert(T){}
  set insertAll(List<T> values){}
  T update(T value){return value;}


}
