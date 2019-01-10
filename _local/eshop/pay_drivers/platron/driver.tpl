%%include_language "_local/eshop/pay_drivers/platron/driver.lng"%%

<!--#set var="settings_form" value="
    <tr>
        <td>%%merchant_id%%:</td>
        <td><input type="text" name="merchant_id" class="field" value="##merchant_id##" size="5"></td>
    </tr>
    <tr>
        <td>%%secret_key%%:</td>
        <td><input type="text" name="secret_key" class="field" value="##secret_key##" size="20"></td>
    </tr>
    <tr>
        <td>%%lifetime%%:</td>
        <td><input type="text" name="lifetime" class="field" value="##lifetime##" size="5"></td>
    </tr>
    <tr>
        <td>%%testing_mode%%:</td>
        <td><input type="checkbox" name="testing_mode" class="field" value="1" ##if(testing_mode==1)##checked##endif##></td>
    </tr>
	<tr>
        <td>%%payment_system_name%%:</td>
        <td><input type="text" name="payment_system_name" class="field" value="##payment_system_name##" size="20"></td>
    </tr>
    </tr>
	<tr>
        <td>%%create_ofd_check%%:</td>
        <td><input type="checkbox" name="create_ofd_check" class="field" value="1" ##if(create_ofd_check==1)##checked##endif##></td>
    </tr>
    </tr>
	<tr>
        <td>%%ofd_vat_type%%:</td>
        <td>
            <select name="ofd_vat_type">
                <option value="0">0%</option>
                <option value="10">10%</option>
                <option value="20">20%</option>
                <option value="110">10/110%</option>
                <option value="120">20/120%</option>
		<option value="none">Не облагается</option>
            </select>
            <script>
                AMI.$('[name=ofd_vat_type]').val('##ofd_vat_type##');
            </script>
        </td>
    </tr>
"-->

<!--#set var="checkout_form" value="
    <form name="paymentformplatron" action="##process_url##" method="POST">
        ##hiddens##
        <input type="submit" name="sbmt" class="btn" value="      %%button_caption%%      " ##disabled##>
    </form>
"-->

<!--#set var="pay_form" value="
    <form name="paymentform" action="##pg_redirect_url##" method="POST">
		<input type="hidden" name="pg_merchant_id" value="##pg_merchant_id##" />
		<input type="hidden" name="pg_order_id" value="##pg_order_id##" />
		<input type="hidden" name="pg_currency" value="##pg_currency##" />
		<input type="hidden" name="pg_amount" value="##pg_amount##" />
		<input type="hidden" name="pg_lifetime" value="##pg_lifetime##" />
		<input type="hidden" name="pg_testing_mode" value="##pg_testing_mode##" />
		<input type="hidden" name="pg_description" value="##pg_description##" />
		<input type="hidden" name="pg_language" value="##pg_language##" />
		<input type="hidden" name="pg_check_url" value="##pg_check_url##" />
		<input type="hidden" name="pg_result_url" value="##pg_result_url##" />
		<input type="hidden" name="pg_request_method" value="##pg_request_method##" />
		<input type="hidden" name="pg_success_url" value="##pg_success_url##" />
		<input type="hidden" name="pg_failure_url" value="##pg_failure_url##" />
		<input type="hidden" name="cms_payment_module" value="##cms_payment_module##" />
		
		##if(!empty(pg_user_phone))##
		<input type="hidden" name="pg_user_phone" value="##pg_user_phone##" />
		##endif##

		##if(!empty(pg_user_email))##
		<input type="hidden" name="pg_user_email" value="##pg_user_email##" />
		<input type="hidden" name="pg_user_contact_email" value="##pg_user_contact_email##" />
		##endif##

		##if(!empty(payment_system_name))##
		<input type="hidden" name="payment_system_name" value="##payment_system_name##" />
		##endif##

		<input type="hidden" name="pg_salt" value="##pg_salt##" />
		<input type="hidden" name="pg_sig" value="##pg_sig##" />
    </form>
	<script type="text/javascript">paymentform.submit();</script>
"-->
