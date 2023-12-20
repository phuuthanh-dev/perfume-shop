//const $ = document.querySelector.bind(document)
//function getImg() {
//    const input = $('.box_info .avatar input[type="file"]')
//    const img = $('.box_info .avatar img')
//    input.addEventListener('change', function () {
//        const newImageLink = URL.createObjectURL(this.files[0]);
//        img.src = URL.createObjectURL(input.files[0])
//        console.log('New Image Link:', newImageLink);
//    })
//}
//
//getImg();

const $ = document.querySelector.bind(document);

function getImg() {
    const input = $('.box_info .avatar input[type="file"]');
    const img = $('.box_info .avatar img');

    input.addEventListener('change', function (event) {
        if (this.files && this.files[0]) {
            const newImageLink = 'images_users_' + event.target.files[0].name;
            const newImageLink1 = 'images/users/' + event.target.files[0].name;
            img.src = newImageLink1;
            console.log(newImageLink1);
            
            var form = document.querySelector("#fima");
            
            document.getElementById("sub").value = newImageLink;
            form.submit();
            console.log(form);
        }
    });
}
getImg();