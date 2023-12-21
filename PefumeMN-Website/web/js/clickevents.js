function openModal(
        modalID,
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
                                    <form action="#">
                                        <input type="number" min="1" max="100" step="1" value="1">
                                        <button type="submit">Add to cart</button>
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
    console.log(ok)
    if (ok) {
        document.getElementById('logout').href = 'logout';
    }
}
