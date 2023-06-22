*** Variables ***
${FIRST_CATALOG_PRODUCT_NAME}       //android.widget.TextView[@content-desc="store item text"][1]
${FIRST_CATALOG_PRODUCT_PRICE}      //android.widget.TextView[@content-desc="store item price"][1]
${PRODUCT_NAME}                     //android.view.ViewGroup[@content-desc="container header"]/android.widget.TextView
${PRODUCT_PRICE}                    accessibility_id=product price
${FIRST_CATALOG_PRODUCT_RATE}       //android.view.ViewGroup[@content-desc="review star 5"][1]/android.widget.TextView
${REVIEW_MSG}                       /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
${CLOSE_REVIEW_BTN}                 accessibility_id=Close Modal button
${SORT_BTN}                         //android.view.ViewGroup[@content-desc="sort button"]/android.widget.ImageView
${SORT_BY_NAME_ASC}                 accessibility_id=nameAsc
${ADD_CART_BTN}                     accessibility_id=Add To Cart button
${ITEM_PLUS_BTN}                    //android.view.ViewGroup[@content-desc="counter plus button"]/android.widget.ImageView
${CART_ITEM_COUNT}                  //android.view.ViewGroup[@content-desc="cart badge"]/android.widget.TextView