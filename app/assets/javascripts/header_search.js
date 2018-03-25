$(function(){
  var html = `<ul class="header_search__click__apeearance__ul">
                <li class ="header_search__click__apeearance__li1">Airbnbで探す</li>
                  <div class = "header_search__click__apeearance__li1__size">
                    <a class = "header_search__click__apeearance__li1_buttons" href="/"><span>すべて</span></a>
                    <a class = "header_search__click__apeearance__li1_buttons" href="/"><span>宿泊先</span></a>
                  </div>
              </ul>`
  $(".header_search__size__relative__index").on("click",function(e){
    $(".header_search__click__apeearance").append(html);
    var count = $(".header_search__click__apeearance__ul").length;
    if(count != 1){
      $(".header_search__click__apeearance__ul").remove();
    }
  });
  $(document).on("click", function(e){
    if(!$(e.target).closest('.header_search__size__relative__index').length){
      $(".header_search__click__apeearance__ul").remove();
    }
  })
  $('#header_search').on("keyup",function(){
  });
});

