<%@ taglib prefix="s" uri="/struts-tags" %>
<script>
    function addFile(id) {
        var parentElm  = document.getElementById(id);
        var file = document.createElement('input');
        file.setAttribute('name','upload');
        file.setAttribute('type','file');

        parentElm.appendChild(file);
    }
</script>
<s:form action="FileUploadAction1"  enctype="multipart/form-data">

    <div id="fileDiv">
        Atttach<s:file name="upload" label="File"/>
    </div>
    <a href="javascript:addFile('fileDiv');">Attach another file</a>
    <s:submit/>
</s:form>