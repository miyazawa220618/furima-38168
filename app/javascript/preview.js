document.addEventListener('DOMContentLoaded', function(){
  const postForm = document.querySelector('.img-upload');
  const previewList = document.getElementById('previews');
  if (!postForm) return null;

  const fileField = document.querySelector('input[type="file"][name="item[item_image]"]');
  // input要素で値の変化が起きた際に呼び出される関数
  fileField.addEventListener('change', function(e){
    // 古いプレビューが存在する場合は削除
    const registeredImg = document.querySelector('.preview-image');
    if (registeredImg){
      registeredImg.remove();
    };
    const file = e.target.files[0];
    const blob = window.URL.createObjectURL(file);
    // 表示する画像を生成
    const previewImage = document.createElement('img');
    previewImage.setAttribute('class', 'preview-image');
    previewImage.setAttribute('src', blob);

    // 生成したHTMLの要素をブラウザに表示させる
    previewList.appendChild(previewImage);
  });
});