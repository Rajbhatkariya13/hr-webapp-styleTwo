<%@taglib uri='/WEB-INF/mytags/tmtags.tld' prefix='tm' %>
<tm:Module name='DESIGNATION' />
<jsp:useBean id='designationBean' scope='request' class='com.thinking.machines.hr.beans.DesignationBean' />
<jsp:useBean id='errorBean' scope='request' class='com.thinking.machines.hr.beans.ErrorBean' />
<jsp:include page='/MasterPageTopSection.jsp' />
<script src='/styletwo/js/DesignationEditForm.js'></script>
<h2>Designation (Edit Module)</h2>
<span class='error'>
<jsp:getProperty name='errorBean' property='error' />
</span>
<form method='post' action='/styletwo/UpdateDesignation.jsp' onsubmit='return validateForm(this)'>
<tm:FormID />
<input type='hidden' id='code' name='code' value='${designationBean.code}'>
Designation
<input type='text' id='title' name='title' maxlength='35' size='36' value='${designationBean.title}'>
<span id='titleErrorSection' class='error'></span><br><br>
<button type='submit'>Update</button>
<button type='Button' onclick='cancelEdition()'>Cancel</button>
</form>
<form id='cancelEditionForm' action='/styletwo/Designations.jsp'>
</form>
<jsp:include page='/MasterPageBottomSection.jsp' />