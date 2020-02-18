<#import "../layout.ftl" as layout>

<@layout.standardPage; section>
    <#if section = "scripts">
    <#-- javascript tags go in here -->
    </#if>
    <#if section = "styles">
    <#-- Import your stylesheets here -->
    </#if>
    <#if section="content">
    <#-- This is where the main content of the page would go, this section sits inbetween the body tags -->


        <div class="container">
        <div class="py-5 text-center">
            <h1>Processing Payment</h1>
        </div>

        <div class="row">
            <div class="">
                <h2 class="">
                    Your cart
                </h2>
            </div>
        </div>

        <form class="">
        <div class="">
            <input type="text" class="form-control" placeholder="Promo code">
            <div class="">
                <button type="submit" class="btn btn-primary btn-md my-0 ml-0">Insert discount code</button>
            </div>
        </div>

        <div class="">
            <h2 class="">Billing address</h2>

            <div class="form-row">
                <div class="col">
                    <input type="text" class="form-control" placeholder="First name">
                </div>
                <div class="col">
                    <input type="text" class="form-control" placeholder="Last name">
                </div>
            </div>

            <div class="">
                <label for="address">Address</label>
                <input type="text" class="form-control" id="address" placeholder="1234 Main St" required>
            </div>

            <div class="">
                <label for="address2">Address 2 (optional) </label>
                <input type="text" class="form-control" id="address2" placeholder="">
            </div>

            <div class="form-row">
                <div class="col">
                    <label for="address2">county</label>
                    <input type="text" id="county" class="form-control" required>

                </div>

                <div class="col">
                    <label for="postcode">Postcode</label>
                    <input type="text" id="postcode" class="form-control mb-0" required>

                </div>

            </div>
        </div>

        <hr class="mb-4">

        <div class="form-check pl-0">
            <input type="checkbox" class="form-check-input filled-in" id="save-info">
            <label class="form-check-label" for="save-info">Remember my details</label>
        </div>

        <hr class="">
        </br>

        <h2 class="">paymentMethod</h2>

        <div class="">
            <div class="">
                <input id="credit" name="paymentMethod" type="radio" class="form-check-input" checked required>
                <label class="form-check-label" for="credit">Credit card</label>
            </div>
            <div class="">
                <input id="debit" name="paymentMethod" type="radio" class="form-check-input" required>
                <label class="form-check-label" for="debit">Debit card</label>
            </div>
            <div class="">
                <input id="paypal" name="paymentMethod" type="radio" class="form-check-input" required>
                <label class="form-check-label" for="paypal">PayPal</label>
            </div>
        </div>

        <div class="">
            <div class="">
                <label >Card Holder Name </label>
                <input type="text" id="cardname" class="form-control" required>
            </div>
        </div>


        <div class="row">


        </div>
        <div class="">
            <label>Card Number</label>
            <div class="form-row">
                <div class=col-auto">
                    <input type="text"  maxlength="4"  placeholder="XXX">
                </div>
                <div class="col-auto">
                    <input type="text"  maxlength="4"  placeholder="XXX">
                </div>
                <div class="col-auto">
                    <input type="text"  maxlength="4"  placeholder="XXX">
                </div>
                <div class="col-auto">
                    <input type="text"  maxlength="4"  placeholder="XXX" >
                </div>
            </div>
        </div>

        <div class="col">

            <div class="form-group col-md-4">
                <div class="col">
                    <label class="">Card Expiry Date</label>
                    <br/>
                    <label class="">Month</label>
                    <div class="col">
                        <select id="Month" class="form-control">
                            <option>January</option>
                            <option>February</option>
                            <option>March</option>
                            <option>April</option>
                            <option>May</option>
                            <option>June</option>
                            <option>July</option>
                            <option>August</option>
                            <option>September</option>
                            <option>October</option>
                            <option>November</option>
                            <option>December</option>
                        </select>
                    </div>
                    <div class="form-group col-md-4">
                        <label for="inputState">Year</label>
                        <select class="form-control">
                            <option>2020</option>
                            <option>2021</option>
                            <option>2022</option>
                            <option>2023</option>
                            <option>2024</option>
                            <option>2025</option>
                            <option>2026</option>
                            <option>2027</option>
                            <option>2029</option>
                            <option>2030</option>
                            <option>2031</option>
                            <option>2032</option>
                        </select>
                    </div>
                    </form>

                    <div class="">
                        <label >Card CVV</label>
                        <input type="text" maxlength="3" placeholder="XXX">
                    </div>
                </div>
            </div>
        </div>
        </div>
    </#if>
</@layout.standardPage>