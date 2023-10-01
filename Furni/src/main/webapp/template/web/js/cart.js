let cartItems = JSON.parse(localStorage.getItem("cartItems")) || [];

      if (cartItems.length > 0) {
        const cartItemsContainer = document.getElementById("cart-items");

        cartItems.forEach((item) => {
          const newRow = document.createElement("tr");

          newRow.innerHTML = `
                  <td class="product-thumbnail">
                      ${item.img}
                  </td>
                  <td class="product-name">
                      <h2 class="h5 text-black">${item.name}</h2>
                  </td>
                  <td class="product-price">${item.price}</td>
                  <td>
                      <div class="input-group mb-3 d-flex align-items-center quantity-container" style="max-width: 120px">
                          <div class="input-group-prepend">
                              <button class="btn btn-outline-black decrease" type="button" onclick="decreaseQuantity(this)">−</button>
                          </div>
                          <input type="text" class="form-control text-center quantity-amount" value="1" placeholder="" aria-label="Example text with button addon" aria-describedby="button-addon1" id="quantity-input-${
                            item.productId
                          }">
    
                          <div class="input-group-append">
                              <button class="btn btn-outline-black increase" type="button" onclick="increaseQuantity(this)">+</button>
                          </div>
                      </div>
                  </td>
                  <td class="product-total">${calculateTotal(
                    item.price,
                    item.quantity
                  )}</td>
                  <td><div onclick="removeFromCart(this)" style="cursor: pointer;">X</div></td>
    
              `;

          cartItemsContainer.appendChild(newRow);
        });
      }

      function calculateTotal(price, quantity) {
        const parsedPrice = parseFloat(price.replace("$", ""));
        if (isNaN(parsedPrice) || isNaN(quantity)) {
          return "$" + parsedPrice.toFixed(2);
        }
        return (parsedPrice * quantity).toFixed(2);
      }

      function removeFromCart(removeButton) {
        const rowToRemove = removeButton.closest("tr");
        rowToRemove.remove();

        const itemName =
          rowToRemove.querySelector(".product-name h2").textContent;
        cartItems = cartItems.filter((item) => item.name !== itemName);
        localStorage.setItem("cartItems", JSON.stringify(cartItems));
      }

      function increaseQuantity(button) {
        const inputElement = button
          .closest(".quantity-container")
          .querySelector(".quantity-amount");
        let currentValue = parseInt(inputElement.value);

        if (!isNaN(currentValue)) {
          currentValue++;
          inputElement.value = currentValue;
          updateTotal(inputElement);
        }
      }

      function decreaseQuantity(button) {
        const inputElement = button
          .closest(".quantity-container")
          .querySelector(".quantity-amount");
        let currentValue = parseInt(inputElement.value);

        if (!isNaN(currentValue) && currentValue > 1) {
          currentValue--;
          inputElement.value = currentValue;
          updateTotal(inputElement);
        }
      }
      
      function updateTotal(inputElement) {
        const row = inputElement.closest("tr");
        const priceElement = row.querySelector(".product-price");
        const quantity = parseInt(inputElement.value);
        const totalElement = row.querySelector(".product-total");
        const price = parseFloat(priceElement.textContent.replace("$", ""));
        const total = (price * quantity).toFixed(2);
        totalElement.textContent = `$${total}`;
      }
      

      function updateCart() {
        const cartRows = document.querySelectorAll("tr");
        let subtotal = 0;

        cartRows.forEach((row) => {
          const quantityInput = row.querySelector(".quantity-amount");
          const priceElement = row.querySelector(".product-price");

          if (quantityInput && priceElement) {
            const parsedPrice = parseFloat(
              priceElement.textContent.replace("$", "")
            );
            const quantity = parseInt(quantityInput.value);

            subtotal += parsedPrice * quantity;
          }
        });

        const totalElement = document.querySelector(".total-value");

        if (totalElement) {
          totalElement.textContent = `$${subtotal.toFixed(2)}`;
        }
      }

      const proceedButton = document.getElementById("proceed");
      if (cartItems.length > 0) {
        proceedButton.disabled = false;
      } else {
        proceedButton.disabled = true;
      }


      function proceedToCheckout() {
        const productData = cartItems.map((item) => {
          const productRow = document.querySelector(
            `#quantity-input-${item.productId}`
          );
          const quantity = productRow ? parseInt(productRow.value) : 1;

          return {
            name: item.name,
            price: item.price,
            quantity: quantity,
          };
        });

        const queryParams = `?products=${encodeURIComponent(
          JSON.stringify(productData)
        )}`;
        window.location.href = `checkout.jsp${queryParams}`;
      }