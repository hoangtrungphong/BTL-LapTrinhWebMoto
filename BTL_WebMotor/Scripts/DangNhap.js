// Lấy giá trị của một input
function getValue(id) {
    return document.getElementById(id).value.trim();
}

// Hiển thị lỗi
function showError(key, mess) {
    document.getElementById(key + '_error').innerHTML = mess;
}

function validate() {
    var flag = true;

    // tên
    var name = getValue('name');
    if (name == '') {
        flag = false;
        showError('name', 'Không để trống trường này');
    } else {
        if (name.length < 5 || /[0-9.!#$%@&'*+/=?^_`{|}~-]/.test(name)) {
            flag = false;
            showError('name', 'Tên không chứa số, kí tự đặc biệt, không ít hơn 5 kí tự');
        } else {
            showError('name', '');
        }
    }

    //  tài khoản
    var username = getValue('username');
    if (username == '' ) {
        flag = false;
        showError('username', 'Không để trống trường này');
    } else {
        if (username.length < 5 || !/^[a-zA-Z0-9]+$/.test(username)) {
            flag = false;
            showError('username', 'Chỉ cho phép kí tự a-z, A-Z, 0-9, không ít hơn 5 kí tự');
        } else {
            showError('username', '');
        }
    }
    //  password
    var password = getValue('password');
    if (password == '' ) {
        flag = false;
        showError('password', 'Không để trống trường này');
    } else {
        if (password.length < 8) {
            flag = false;
            showError('password', 'Mật khẩu phải lớn hơn 8 kí tự');
        } else {
            showError('password', '');
        }
    }

    // 2. repassword
    var repassword = getValue('repassword');
    if (repassword == '') {
        flag = false;
        showError('repassword', 'Không để trống trường này');
    } else {
        if (password != repassword) {
            flag = false;
            showError('repassword', 'Nhập lại mật khẩu không chính xác');
        } else {
            showError('repassword', '');
        }
    }


    // Ngày sinh
    var day = getValue("day");
    var month = getValue("month");
    var year = getValue("year");
    if (day == "" || month == "" || year == "") {
        showError('date', 'Vui lòng chọn đẩy đủ ngày sinh')
        flag = false;
    } else {
        showError('date', '')

    }

    // 3. Phone
    var phone = getValue('phone');
    if (phone == '') {
        flag = false;
        showError('phone', 'Không để trống trường này');
    } else {
        if (!/^[0-9]{10}$/.test(phone)) {
            flag = false;
            showError('phone', 'Vui lòng nhập đúng định dạng sđt');
        } else {
            showError('phone', '');
        }
    }

    // 4. Email
    var email = getValue('email');
    var mailformat = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+.[a-zA-Z]*$/;
    if (email == '') {
        flag = false;
        showError('email', 'Không để trống trường này');
    } else {
        if (!mailformat.test(email)) {
            flag = false;
            showError('email', 'Vui lòng nhập đúng định dạng Email');
        } else {
            showError('email', '');
        }
    }

    //Giới tính
    var getSelectedValue = document.querySelector(
        'input[name="gioitinh"]:checked');

    if (getSelectedValue != null) {
        showError('sex', '');
    }
    else {
        flag = false;
        showError('sex', 'Vui lòng chọn giới tính');
    }

    //
    return flag;
}

