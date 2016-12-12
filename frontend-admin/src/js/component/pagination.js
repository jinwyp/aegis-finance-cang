
var avalon = require('avalon2') ;

function heredoc(fn) {
    return fn.toString().replace(/^[^\/]+\/\*!?\s?/, '').replace(/\*\/[^\/]+$/, '').trim().replace(/>\s*</g, '><');
}

var paginationTemplate = heredoc(function() {

    /*

     <div class="table-pagination">
     <span class="table-pagination-first" ms-click="@pageFirst"></span>
     <span class="table-pagination-prev" ms-click="@pagePrevious"></span>
     <span class="separator"></span>

     <span class="table-pagination-input" >页数:
     <input class="ui-pg-input ui-corner-all" type="text" size="2" maxlength="2" ms-duplex="@inputCurrentPages"> of {{@totalPages}}
     </span>
     <span class="separator"></span>
     <span class="table-pagination-next" ms-click="@pageNext"></span>
     <span class="table-pagination-last" ms-click="@pageLast"></span>

     <select class="select ui-pg-selbox ui-widget-content ui-corner-all " role="listbox" title="Records per Page" ms-duplex="@countPerPage">
     <option role="option" value="10">10</option>
     <option role="option" value="20">20</option>
     <option role="option" value="30">30</option>
     <option role="option" value="50">50</option>
     <option role="option" value="80">80</option>
     </select>

     <span class="table-pagination-total">当前 {{@from}} - {{@to}},  共 {{@total}} 条 </span>
     </div>


     */

});


avalon.component('ms-pagination', {
    template: paginationTemplate,
    defaults: {

        totalPages : 1,
        currentPage : 1,
        countPerPage : 10,
        from : 1,
        to : 10,
        total : 0,

        inputCurrentPages : 1,
        isShowPagination : true,
        changePageNo : avalon.noop,

        _isShow : false,

        $buttons: {},

        onInit : function() {
            var vm = this;
            vm._showPaginations();
            //console.log('init', this.totalPages);
            this.$watch('totalPages', function(){
                setTimeout(function(){
                    vm._showPaginations();
                },2);
            });
        },

        onReady : function(){
            //console.log('ready', this.totalPages);
        },

        onViewChange : function(){
            //console.log('views change', this.totalPages);
        },

        isDisabled: function (name, page) {
            this.$buttons[name] = (this.currentPage === page);
            return this.$buttons[name];
        },

        _changePage : function(event, pageNo, name){
            if (this.$buttons[name] || pageNo === this.currentPage) {
                return;  //disabled, active不会触发
            }

            event.preventDefault();
            var tempNo = Number(pageNo);

            if (tempNo < 1){
                tempNo = 1 ;
            }else if (tempNo > this.totalPages){
                tempNo = this.totalPages;
            }
            this.currentPage = tempNo;
            this.changePageNo(tempNo);
        },


        pageFirst : function(){
            vm.pagination.currentPage = 1;
        },
        pageLast : function(){
            vm.pagination.currentPage = vm.pagination.totalPage;
        },
        pagePrevious : function(){
            if (vm.pagination.currentPage - 1 >= 1) {
                vm.pagination.currentPage = vm.pagination.currentPage - 1;
            }

        },
        pageNext : function(){
            if (vm.pagination.currentPage + 1 <= vm.pagination.totalPage) {
                vm.pagination.currentPage = vm.pagination.currentPage + 1;
            }
        }


    }

});

