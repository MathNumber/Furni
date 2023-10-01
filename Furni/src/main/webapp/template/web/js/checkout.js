document.addEventListener("DOMContentLoaded", function () {
	
    const urlParams = new URLSearchParams(window.location.search);
    const productDataParam = urlParams.get("products");
    const productData = JSON.parse(decodeURIComponent(productDataParam));
    const tableBody = document.querySelector(".site-block-order-table tbody");
    const hiddenInputsDiv = document.querySelector('.hiddenInputs');
    
    let total = 0;
    let highestCount = -1; 

    productData.forEach((product, index) => {
		
		if (index > highestCount) {
	        highestCount = index;
	    }
        
        const productNameInput = document.createElement('input');
        productNameInput.setAttribute('type', 'hidden');
        productNameInput.setAttribute('name', `products.name[${index}]`);
        productNameInput.setAttribute('value', product.name);
        hiddenInputsDiv.appendChild(productNameInput);

        const productQuantityInput = document.createElement('input');
        productQuantityInput.setAttribute('type', 'hidden');
        productQuantityInput.setAttribute('name', `products.quantity[${index}]`);
        productQuantityInput.setAttribute('value', product.quantity);
        hiddenInputsDiv.appendChild(productQuantityInput);

        const productPriceInput = document.createElement('input');
        productPriceInput.setAttribute('type', 'hidden');
        productPriceInput.setAttribute('name', `products.price[${index}]`);
        productPriceInput.setAttribute('value', product.price.replace("$", ""));
        hiddenInputsDiv.appendChild(productPriceInput);
        
        // Create table row
        const row = document.createElement("tr");
        row.innerHTML = `
            <td>${product.name} <strong class="mx-2">x</strong>${product.quantity}</td>
            <td>$${parseFloat(
                product.price.replace("$", "") * product.quantity
              ).toFixed(2)}</td>
        `;
        tableBody.appendChild(row);

        total += product.price.replace("$", "") * product.quantity;
    });
    
    const productCount = document.createElement('input');
        productCount.setAttribute('type', 'hidden');
        productCount.setAttribute('name', `count`);
        productCount.setAttribute('value', highestCount);
        hiddenInputsDiv.appendChild(productCount);

	    const totalRow = document.createElement("tr");
	    totalRow.innerHTML = `
	        <td class="text-black font-weight-bold">
	            <strong>Order Total</strong>
	        </td>
	        <td class="text-black font-weight-bold">
	            <strong>$${total.toFixed(2)}</strong>
	        </td>
	    `;
	    tableBody.appendChild(totalRow);
	});

      document.addEventListener("DOMContentLoaded", function () {
        const requiredInputs = document.querySelectorAll("input[required]");
        const placeOrderButton = document.getElementById("placeOrderButton");

        function validateForm() {
          let allRequiredFilled = true;
          requiredInputs.forEach(function (input) {
            if (input.value.trim() === "") {
              allRequiredFilled = false;
            }
          });
          placeOrderButton.disabled = !allRequiredFilled;
        }

        requiredInputs.forEach(function (input) {
          input.addEventListener("input", validateForm);
        });

        placeOrderButton.disabled = true;
      });
      


      