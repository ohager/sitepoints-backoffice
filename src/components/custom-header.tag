import AppActions from '../actions/app-actions.js'

<custom-header>
    <header class="bottom-shadow">
        <div class="mui-appbar mui--appbar-line-height default-primary-color">
            <div class="mui-container-fluid" onclick="{ openMenu }">
                <a class="sidedrawer-toggle mui--visible-xs-inline-block js-show-sidedrawer mui--no-user-select">☰</a>
                <a class="sidedrawer-toggle mui--hidden-xs js-hide-sidedrawer mui--no-user-select">☰</a>
                <span class="mui--text-title mui--visible-xs-inline-block">Brand.io</span>
            </div>
        </div>
    </header>
    <style scoped>
        header {
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            z-index: 2;
            transition: left 0.2s;
        }

        .sidedrawer-toggle {
            color: #fff;
            cursor: pointer;
            font-size: 20px;
            line-height: 20px;
            margin-right: 10px;
        }

        .sidedrawer-toggle:hover {
            color: #fff;
            text-decoration: none;
        }


    </style>

    <script style="text/babel">
        this.on('update', () => {
            console.log("updated");
        });

        this.openMenu = function(e){
            AppActions.toggleDrawer();
        }

    </script>

</custom-header>