function openModal(
        modalID,
        id,
        image1,
        image2,
        name,
        salePrice,
        price,
        describe,
        classifyStr,
        companyName
        ) {
    let modalElement = document.getElementById(modalID);
    let arr = classifyStr.split(/\s+/);
    let modal = `<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
        <button type="button" data-dismiss="modal" aria-label="close" class="close">
            <span aria-hidden="true">&times;</span>
        </button>
        <div class="modal_body">
            <div class="container">
                <div class="row">
                    <div class="col-lg-5 col-md-5 col-sm-12">
                        <div class="modal_tab">
                            <div class="tab-content product-details-large">
                                <div class="tab-pane fade show active" id="tab1" role="tabpanel">
                                    <div class="modal_tab_img">
                                        <a href="#"><img src="${image1}" alt=""></a>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab2" role="tabpanel">
                                    <div class="modal_tab_img">
                                        <a href="#"><img src="images/new-product/N2-1.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab3" role="tabpanel">
                                    <div class="modal_tab_img">
                                        <a href="#"><img src="images/new-product/N3.png" alt=""></a>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="tab4" role="tabpanel">
                                    <div class="modal_tab_img">
                                        <a href="#"><img src="images/new-product/N4-1.png" alt=""></a>
                                    </div>
                                </div>
                            </div>
                            <div class="modal_tab_button">
                                <ul class="nav product_navactive owl-carousel" role="tablist">
                                    <li>
                                        <a href="#tab1" class="nav-link active" data-toggle="tab" role="tab"
                                           aria-controls="tab1" aria-selected="false">
                                            <img src="${image1}" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab2" class="nav-link" data-toggle="tab" role="tab"
                                           aria-controls="tab2" aria-selected="false">
                                            <img src="${image2}" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab3" class="nav-link" data-toggle="tab" role="tab"
                                           aria-controls="tab3" aria-selected="false">
                                            <img src="images/new-product/N3.png" alt="">
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#tab4" class="nav-link" data-toggle="tab" role="tab"
                                           aria-controls="tab4" aria-selected="false">
                                            <img src="images/new-product/N4-1.png" alt="">
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-7 col-md-7 col-sm-12">
                        <div class="modal_right">
                            <div class="modal_title mb-10">
                                <h2>${name}</h2>
                            </div>
                            <div class="modal_price mb-10">
                                <span class="new_price">Rs. ${salePrice}</span>
                                <c:if test="${price != salePrice}">
                                    <span class="old_price">Rs. ${price}</span>
                                </c:if>
                            </div>
                            <div class="modal_description mb-15">
                                <p>${describe}</p>
                            </div>
                            <div class="variants_selects">
                                <div class="variants_size">
                                    <h2>Sub: ${companyName}</h2><br/>
                                </div>
                                <div class="variants_fragrance">
                                    <h2>Size</h2>
                                    <select class="select_option" style="padding: 10px 0">
                                    ${arr.map((si, index) => `<option value="${index + 1}" selected>${si}</option>`).join('')}
                                </select>
                                </div>
                                <div class="modal_add_to_cart">
                                    <form>
                                        <input id="quantity" name="quantity" type="number" min="1" max="100" step="1" value="1">
                                        <input id="id" name="id" type="hidden" value="${id}">
                                        <input id="role" name="role" type="hidden" value="add">
                                        <button onclick="loadProductCart(this)" type="button">Add to cart</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>`;
    console.log("Id:" + id);
    let result = modalElement.innerHTML = modal;
    return result;
}
//
function modalOpen2(modalID, name, avt, balance) {
    let modalElement = document.getElementById(modalID);
    let modal = `<div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <button type="button" data-dismiss="modal" aria-label="close" class="close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <div class="modal_body">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-5 col-md-5 col-sm-12">
                                <img src="images/bannerwallet.png" alt="banner">
                            </div>

                            <div class="col-lg-7 col-md-7 col-sm-12">
                                <div class="modal_add_to_cart">
                                    <div style="display: flex;">
                                        <div ><img src="${avt}" atl="avatar" width="100px" style="border-radius:50%;"/></div>
                                        <div><h4>${name}</h4></div>
                                    </div>
                                        <div>
                                            <h4>Balance in card:</h4>
                                            <h3 style="color: green">$ ${balance}</h3>
                                        </div>
                                    <form action="wallet" method="get">
                                        <input  name="add" type="text" min="25" max="50000" step="5" value="25">
                                        <p style="color: grey">Enter a minimum amount of $50 and a maximum of $10000</p>
                                        <input  name="userN" type="hidden" value="${name}">
                                        <button type="submit">Input to card</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
   </div>`;
    let result = modalElement.innerHTML = modal;
    return result;
}


function confirmLogout(modalID) {
    let modalElement = document.getElementById(modalID);
    let modal = `
<div class="modal-dialog modal-dialog-centered" role="document" style="text-align:center">
    <div class="modal-content" style="width:500px; margin: 0 auto">
      <div class="modal-header" style="font-size:28px;padding: 30px 0; font-weight: 600; margin: 0 auto"><div>Sign out</div></div>
      <div class="modal-body" style="font-size: 16px; font-weight: 600">Are you sure you would like to sign out of your account?</div>
        <div class="modal-footer" style="justify-content: center;">
            <div style="width:40%; background-color: white"><a style="background-color: white!important; color: black; border-color: black;" class="btn btn-primary btn-block" href="logout">Logout</a></div>
            <div style="width:40%"><button data-dismiss="modal" aria-label="close" class="btn btn-primary btn-block">Cancel</button></div>
        </div>
    </div>
</div>`;

    let result = modalElement.innerHTML = modal;
    return result;
}

//
function acceptRead() {
    var elements = document.querySelectorAll(".acceptEdit");
    var buttonVip = document.getElementById("buttonVip");
    var buttonVip2 = document.getElementById("buttonVip2");
    elements.forEach(function (element) {
        element.readOnly = false;
    });

    buttonVip.style.display = 'none';
    buttonVip2.style.display = 'block';
}

//
function notAccept() {
    var elements = document.querySelectorAll(".acceptEdit");
    var buttonVip = document.getElementById("buttonVip");
    var buttonVip2 = document.getElementById("buttonVip2");
    elements.forEach(function (element) {
        element.readOnly = true;
    });

    buttonVip.style.display = 'block';
    buttonVip2.style.display = 'none';
}

//
function checkLogout(choice) {
    if (choice == 'yes') {
        document.getElementById('logout').href = 'logout';
    }
}
//

function loadProductCart(obj) {
    var quantity = document.getElementById("quantity").value;
    var id = document.getElementById("id").value;
    var role = document.getElementById("role").value;
    $.ajax({
        url: "/PefumeMN-Website/cart",
        type: "get",
        data: {
            quantity: quantity,
            id: id,
            role: role
        },
        success: function (data) {
            var row = document.getElementById("header_right");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function removeProductCart(obj) {
    var role = "remove";
    var id = obj.value;
    console.log(role, id);
    $.ajax({
        url: "/PefumeMN-Website/cart",
        type: "get",
        data: {
            rid: id,
            role: role
        },
        success: function (data) {
            var row = document.getElementById("header_right");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}


function reloadPriceViewCart(id) {
    event.preventDefault();
    $.ajax({
        url: "/PefumeMN-Website/priceviewcart",
        type: "get",
        data: {
            rid: id
        },
        success: function (data) {
            var row = document.getElementById("viewcart_content");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function toggleWishlist(id) {
    event.preventDefault();
    $.ajax({
        url: "/PefumeMN-Website/wishlist",
        type: "get",
        data: {
            wishId: id
        },
        success: function (data) {
            var row = document.getElementById("header_right");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}
function  loadMore(obj) {
    var amount = document.getElementsByClassName("product_items").length;
    var numPage = ((parseInt(obj.textContent) - 1) * 9);
    $(".linkLoad").removeClass("active");
    $(obj).addClass("active");

    $.ajax({
        url: "/PefumeMN-Website/load",
        type: "get",
        data: {
            exits: numPage
        },
        success: function (data) {
            var row = document.getElementById("contentt");
            row.innerHTML = data;
        },
        error: function (xhr) {
        }
    });
}

function change() {
    var a = document.getElementById("avt");
    if (a.style.display === 'none' || a.style.display === '') {
        a.style.display = 'block';
    } else {
        a.style.display = 'none';
    }
}