<!--modal start-->
<!--两个按钮取消、确认 modal-->
<div class="container modalPublic">
    <div class="row clearfix">
        <div class="modal_1 modal fade" data-backdrop="static" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button"  class="close close_modal" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        <h4 class="modal-title" id="modal_title_1">提示信息</h4>
                    </div>
                    <div class="modal-body">
                        <div>
                            <div class="bg_img question" id="modalImg_1"></div>
                            <div class="modalInfo">
                                <span id="modalInfo_1" >您确定要为该系统用户重置密码？</span>
                            </div>
                            <div class="tip">
                                <em class="modalEm_1">
                                    *密码重置后,原有的密码将失效
                                </em>
                                <em class="modalEm_1">
                                    *重置后的密码将发送到该用户的邮箱
                                </em>
                            </div>
                            <div class="buttons">
                                <input type="button" data-dismiss="modal" class="btn cancel" value="取消" id="md_cancel_1">
                                <input type="button" class="btn confirm" value="确认" id="md_ok_1">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
