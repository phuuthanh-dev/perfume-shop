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


function modalLogout(modalID) {
    let modalElement = document.getElementById(modalID);
    let modal = `
<button data-modal-target="popup-modal" data-modal-toggle="popup-modal" class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800" type="button">
Toggle modal
</button>

<div id="popup-modal" tabindex="-1" class="hidden overflow-y-auto overflow-x-hidden fixed top-0 right-0 left-0 z-50 justify-center items-center w-full md:inset-0 h-[calc(100%-1rem)] max-h-full">
    <div class="relative p-4 w-full max-w-md max-h-full">
        <div class="relative bg-white rounded-lg shadow dark:bg-gray-700">
            <button type="button" class="absolute top-3 end-2.5 text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm w-8 h-8 ms-auto inline-flex justify-center items-center dark:hover:bg-gray-600 dark:hover:text-white" data-modal-hide="popup-modal">
                <svg class="w-3 h-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 14 14">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="m1 1 6 6m0 0 6 6M7 7l6-6M7 7l-6 6"/>
                </svg>
                <span class="sr-only">Close modal</span>
            </button>
            <div class="p-4 md:p-5 text-center">
                <svg class="mx-auto mb-4 text-gray-400 w-12 h-12 dark:text-gray-200" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 20 20">
                    <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M10 11V6m0 8h.01M19 10a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z"/>
                </svg>
                <h3 class="mb-5 text-lg font-normal text-gray-500 dark:text-gray-400">Are you sure you want to delete this product?</h3>
                <button data-modal-hide="popup-modal" type="button" class="text-white bg-red-600 hover:bg-red-800 focus:ring-4 focus:outline-none focus:ring-red-300 dark:focus:ring-red-800 font-medium rounded-lg text-sm inline-flex items-center px-5 py-2.5 text-center me-2">
                    Yes, I'm sure
                </button>
                <button data-modal-hide="popup-modal" type="button" class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-gray-200 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-600">No, cancel</button>
            </div>
        </div>
    </div>
</div>
`;
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
function checkLogout() {
    let ok = confirm('Are you sure you want to logout?');
    if (ok) {
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
function loadMore(obj) {
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