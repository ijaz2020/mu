<%@ include file="/common/taglibs.jsp"%>
<br>
<div class="panel panel-danger"></div>
<div class="container">
	<div class='row'>
		<div class='col-md-4'></div>
		<div class='col-md-4'>
			<div class='col-md-12 form-group'>
				<h1>Payment page</h1>
				<hr class="featurette-divider"></hr>
				<p>NOTE: This snippet was created with the help of derwiki's
					Stripe form.</p>
				<hr class="featurette-divider"></hr>
				<div class="progress-bar progress-bar-striped active"
					role="progressbar" aria-valuenow="60" aria-valuemin="0"
					aria-valuemax="100" style="width: 100%;">Step 4: Payment</div>
				<br>
				<hr class="featurette-divider"></hr>
			</div>
			<form accept-charset="UTF-8" action="/" class="require-validation"
				data-cc-on-file="false" id="payment-form" method="post">
				<div class='form-row'>
					<div class='col-xs-12 form-group required'>
						<label class='control-label'>Name on Card</label> <input
							class='form-control' size='4' type='text'>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group card required'>
						<label class='control-label'>Card Number</label> <input
							autocomplete='off' class='form-control card-number' size='20'
							type='text'>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-12 form-group card required'>
						<label class='control-label'>Billing Address</label> <input
							autocomplete='off' class='form-control' size='20' type='text'>
					</div>
				</div>
				<div class='form-row'>
					<div class='col-xs-4 form-group cvc required'>
						<label class='control-label'>CVC</label> <input autocomplete='off'
							class='form-control card-cvc' placeholder='ex. 311' size='4'
							type='text'>
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'>Expiration</label> <input
							class='form-control card-expiry-month' placeholder='MM' size='2'
							type='text'>
					</div>
					<div class='col-xs-4 form-group expiration required'>
						<label class='control-label'>�</label> <input
							class='form-control card-expiry-year' placeholder='YYYY' size='4'
							type='text'>
					</div>
				</div>


				<div class='form-row'>
					<div class='col-md-12 form-group'>
						<hr class="featurette-divider"></hr>
						<button class='form-control btn btn-success submit-button'
							disabled>
							<span class="badge">Your total today: $300</span>
						</button>
						<button class='form-control btn btn-primary submit-button'
							type='submit'>Pay �</button>

					</div>
				</div>

				<div class='form-row'>
					<div class='col-md-12 error form-group hide'>
						<div class='alert-danger alert'>Please correct the errors
							and try again.</div>
					</div>
				</div>
			</form>
		</div>

		<div class='col-md-4'></div>
	</div>
</div>
</div>
<br>
<div class="panel panel-danger"></div>