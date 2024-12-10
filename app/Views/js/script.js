//hàm chuyển hướng người dùng đến section khác ở trong cùng 1 file html
//sử dụng tag content-section và active
function showSection(section) {
    var sections = document.getElementsByClassName('content-section');
    for (var i = 0; i < sections.length; i++) {
        sections[i].classList.remove('active');
    }
    document.getElementById(section).classList.add('active');
}

//điều hướng giao diện thông qua đường dẫn
function navigate(path){
    window.location.href = path;
}