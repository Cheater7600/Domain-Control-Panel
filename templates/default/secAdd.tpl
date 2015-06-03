{include file="header.tpl"}
<div class="c-block" id="breadcrumbs">
	<ol class="breadcrumb">
		<li><a href="index.php?page=DomainList"><i class="fa fa-home"></i> Domain Control Panel</a></li>
		<li class="active"><a href="index.php?page=SecList&id={$soa['id']}">{$soa['origin']}</a></li>
	</ol>
</div>
<div class="row">
	<div class="col-lg-12">
		<div class="page-header pull-right">
			<a href="index.php?page=SecList&id={$soa['id']}" class="btn btn-gr-gray"><i class="fa fa-list"></i> DESSEC auflisten</a>
		</div>
	</div>
</div>
{if isset($success)}
	<div class="alert alert-success">
		Record erfolgreich hinzugefügt.
	</div>
{/if}
<form method="post" action="index.php?page=SecAdd&id={$soa['id']}">
	<div class="row">
		<div class="col-lg-12">
			<div class="panel panel-default">
				<div class="panel-heading">Add Record</div>
				<div class="panel-body">
					<div>
                        <fieldset>
                            <dl>
                                <dt>Algorithmus</dt>
                                <dd>
                                    <select id="type" name="algo" class="medium">
                                        <option label="RSA/SHA-256 (8)" value="8">RSA/SHA-256 (8)</option>
                                        <option label="RSA/SHA-512 (10)" value="10">RSA/SHA-512 (10)</option>
                                    </select>
                                </dd>
                            </dl>
                            <dl>
                                <dt>ZSK Public Key</dt>
                                <dd>
                                    <textarea cols="70" rows="10" id="zskpub" name="zskpub"></textarea>
                                </dd>
                            </dl>
                            <dl>
                                <dt>ZSK Private Key</dt>
                                <dd>
                                    <textarea cols="70" rows="10" id="zskpriv" name="zskpriv"></textarea>
                                </dd>
                            </dl>
                            <dl>
                                <dt>KSK Public Key</dt>
                                <dd>
                                    <textarea cols="70" rows="10" id="kskpub" name="kskpub"></textarea>
                                </dd>
                            </dl>
                            <dl>
                                <dt>KSK Private Key</dt>
                                <dd>
                                    <textarea cols="70" rows="10" id="kskpriv" name="kskpriv"></textarea>
                                </dd>
                            </dl>
                        </fieldset>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="formSubmit" style="text-align: center;">
		<input class="btn btn-gr-gray" name="submit" type="submit" value="Submit" >
	</div>
</form>


{include file="footer.tpl"}