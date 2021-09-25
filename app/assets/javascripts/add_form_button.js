$(function(){
  function buildField(index) {  // 追加するフォームのｈｔｍｌを用意
    const html = `<div class="js-file-group" data-index="${index}">
                    <div class="new-ingredients">
                      <div class="posts-new-content ingredient">
                        <input placeholder="材料" class="ingredient-form" type="text" name="recipe[ingredients_attributes][${index}][ingredient]" id="recipe_ingredients_attributes_0_ingredient">
                        <input placeholder="分量" class="amount-form" type="text" name="recipe[ingredients_attributes][${index}][amount]" id="recipe_ingredients_attributes_0_amount">
                        <select name="recipe[ingredients_attributes][${index}][unit]" id="recipe_ingredients_attributes_0_unit"><option value="">未選択</option>
                        <option value="大さじ">大さじ</option>
                        <option value="小さじ">小さじ</option>
                        <option value="ml">ml</option>
                        <option value="cc">cc</option>
                        <option value="グラム">グラム</option>
                        <option value="個">個</option>
                        <option value="パック">パック</option>
                        <option value="枚">枚</option>
                        <option value="少々">少々</option>
                        <option value="ひと摘み">ひと摘み</option></select>
                      </div>
                      <div class="delete-form-button">
                        <span class="delete-form-btn">
                          削除する
                        </span>
                      </div>
                    </div>
                  </div>`;
    return html;
  }

  let fileIndex = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14]
  let displayCount = $(".js-file-group").length
  
  $(".add-form-btn").on("click", function() {
    $(".ingredient-area").append(buildField(fileIndex[0]));
    fileIndex.shift();
    if (fileIndex.length == 0) $(".add-form-btn").css("display","none");
      displayCount += 1;
  } )

  $(".ingredient-area").on("click", ".delete-form-btn", function() {
    $(".add-form-btn").css("display","block");
    const targetIndex = $(this).parent().parent().data("index")
    var lastIndex = $(".js-file-group:last").data("index");
    displayCount -= 1;
    $(this).parent().parent().remove();
    if (fileIndex.length >= 1) {
      fileIndex.push(fileIndex[fileIndex.length - 1] + 1);
    } else {
      fileIndex.push(lastIndex + 1);
    }
    if (displayCount == 0) {
      $(".ingredient-area").append(buildField(fileIndex[0] - 1));
      fileIndex.shift();
      displayCount += 1;
    }
  } )
})
